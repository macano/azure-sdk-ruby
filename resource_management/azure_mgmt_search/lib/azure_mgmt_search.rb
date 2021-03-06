# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'azure_mgmt_search/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Search
  autoload :AdminKeys,                                          'azure_mgmt_search/admin_keys.rb'
  autoload :QueryKeys,                                          'azure_mgmt_search/query_keys.rb'
  autoload :Services,                                           'azure_mgmt_search/services.rb'
  autoload :SearchManagementClient,                             'azure_mgmt_search/search_management_client.rb'

  module Models
    autoload :AdminKeyResult,                                     'azure_mgmt_search/models/admin_key_result.rb'
    autoload :QueryKey,                                           'azure_mgmt_search/models/query_key.rb'
    autoload :ListQueryKeysResult,                                'azure_mgmt_search/models/list_query_keys_result.rb'
    autoload :Sku,                                                'azure_mgmt_search/models/sku.rb'
    autoload :SearchServiceProperties,                            'azure_mgmt_search/models/search_service_properties.rb'
    autoload :SearchServiceCreateOrUpdateParameters,              'azure_mgmt_search/models/search_service_create_or_update_parameters.rb'
    autoload :SearchServiceReadableProperties,                    'azure_mgmt_search/models/search_service_readable_properties.rb'
    autoload :SearchServiceResource,                              'azure_mgmt_search/models/search_service_resource.rb'
    autoload :SearchServiceListResult,                            'azure_mgmt_search/models/search_service_list_result.rb'
    autoload :SkuType,                                            'azure_mgmt_search/models/sku_type.rb'
    autoload :SearchServiceStatus,                                'azure_mgmt_search/models/search_service_status.rb'
    autoload :ProvisioningState,                                  'azure_mgmt_search/models/provisioning_state.rb'
  end
end
