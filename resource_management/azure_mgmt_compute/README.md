# Intro

This project provides a Ruby gem for easy access to the Azure ARM Compute API. With this gem you can create/update/list/delete virtual machines, virtual machine images and virtual machine extensions. Usage operations aren't supported yet.

# Supported Ruby Versions

* Ruby 2+

Note: x64 Ruby for Windows is known to have some compatibility issues.

# Getting started

## Setting up the service principal

First of all to start interacting with the ARM compute you will need to setup a service principal. Service principal is an Azure application which allows you to authenticate to Azure and access Azure services. The detailed steps of how to setup a service principal can be found in this article: http://aka.ms/cli-service-principal. In the result of setting up service principal you will get tenant id, client id and client secret data.

## Installation

install the appropriate gem:

```
gem install azure_mgmt_compute
```

and reference it in your code:

```Ruby
require 'azure_mgmt_compute'
```

After that you should be ready to start using SDK!

## Authentication

```Ruby
# Create authentication objects
token_provider = MsRestAzure::ApplicationTokenProvider.new(tenant_id, client_id, secret)
credentials = MsRest::TokenCredentials.new(token_provider)
```

To get tenant_id, client_id and secret for your Azure application visit Azure portal or copy them from the powershell script from the article mentioned above.

## Creating new virtual machine

```Ruby
# Include SDK modules to ease access to compute classes.
include Azure::ARM::Compute
include Azure::ARM::Compute::Models

# Create a client - a point of access to the API and set the subscription id
client = ComputeManagementClient.new(credentials)
client.subscription_id = subscription_id

# Create a model for new virtual machine
props = VirtualMachineProperties.new

windows_config = WindowsConfiguration.new
windows_config.provision_vmagent = true
windows_config.enable_automatic_updates = true

os_profile = OSProfile.new
os_profile.computer_name = 'testvm1'
os_profile.admin_username = 'testvm1'
os_profile.admin_password = 'P@ssword1'
os_profile.windows_configuration = windows_config
os_profile.secrets = []
props.os_profile = os_profile

hardware_profile = HardwareProfile.new
hardware_profile.vm_size = 'Standard_A0'
props.hardware_profile = hardware_profile

# create_storage_profile it is hypotetical helper method which creates storage
# profile by means of ARM Storage SDK.
props.storage_profile = create_storage_profile

# create_storage_profile it is hypotetical helper method which creates network
# profile my means of ARM Network SDK.
props.network_profile = create_network_profile

params = VirtualMachine.new
params.type = 'Microsoft.Compute/virtualMachines'
params.properties = props
params.location = 'westus'

promise = client.virtual_machines.create_or_update_async('existing_resource_group_name', 'name_of_new_vm', params)
```

The SDK method returns a promise which you can utilize depending on your needs. E.g. if you need to get result immediately via sync blocking call - do the following:

```Ruby
result = promise.value!
```

If you need to follow async flow - provide a block which will be executed in off main thread:

```Ruby
promise = promise.then do |result|
  # Handle the result
end
```

In both cases you're returned an instance of MsRestAzure::AzureOperationResponse which contains HTTP requests/response objects and response body. Response body is a deserialized object representing the received information. In case of code above - newly created virtual machine. To get data from it:

```Ruby
vm = result.body

p vm.name # name of the new vm
p vm.id # id of the new vm
```

Congrats, you've create new virtual machine. We encourage you to try more stuff and let us know your feedback!
For advanced SDK usage please reference to the spec files.
