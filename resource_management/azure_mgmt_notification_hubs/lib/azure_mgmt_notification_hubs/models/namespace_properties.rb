# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Namespace properties.
    #
    class NamespaceProperties

      include MsRestAzure

      # @return [String] The name of the namespace.
      attr_accessor :name

      # @return [String] Gets or sets provisioning state of the Namespace.
      attr_accessor :provisioning_state

      # @return [String] Specifies the targeted region in which the namespace
      # should be created. It can be any of the following values: Australia
      # EastAustralia SoutheastCentral USEast USEast US 2West USNorth Central
      # USSouth Central USEast AsiaSoutheast AsiaBrazil SouthJapan EastJapan
      # WestNorth EuropeWest Europe
      attr_accessor :region

      # @return [String] Status of the namespace. It can be any of these
      # values:1 = Created/Active2 = Creating3 = Suspended4 = Deleting
      attr_accessor :status

      # @return [DateTime] The time the namespace was created.
      attr_accessor :created_at

      # @return [String] Endpoint you can use to perform NotificationHub
      # operations.
      attr_accessor :service_bus_endpoint

      # @return [String] The Id of the Azure subscription associated with the
      # namespace.
      attr_accessor :subscription_id

      # @return [String] ScaleUnit where the namespace gets created
      attr_accessor :scale_unit

      # @return [Boolean] Whether or not the namespace is currently enabled.
      attr_accessor :enabled

      # @return [Boolean] Whether or not the namespace is set as Critical.
      attr_accessor :critical

      # @return [NamespaceType] Gets or sets the namespace type. Possible
      # values include: 'Messaging', 'NotificationHub'
      attr_accessor :namespace_type

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        serialized_property = object.region
        output_object['region'] = serialized_property unless serialized_property.nil?

        serialized_property = object.status
        output_object['status'] = serialized_property unless serialized_property.nil?

        serialized_property = object.created_at
        serialized_property = serialized_property.new_offset(0).strftime('%FT%TZ')
        output_object['createdAt'] = serialized_property unless serialized_property.nil?

        serialized_property = object.service_bus_endpoint
        output_object['serviceBusEndpoint'] = serialized_property unless serialized_property.nil?

        serialized_property = object.subscription_id
        output_object['subscriptionId'] = serialized_property unless serialized_property.nil?

        serialized_property = object.scale_unit
        output_object['scaleUnit'] = serialized_property unless serialized_property.nil?

        serialized_property = object.enabled
        output_object['enabled'] = serialized_property unless serialized_property.nil?

        serialized_property = object.critical
        output_object['critical'] = serialized_property unless serialized_property.nil?

        serialized_property = object.namespace_type
        output_object['namespaceType'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [NamespaceProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = NamespaceProperties.new

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        deserialized_property = object['region']
        output_object.region = deserialized_property

        deserialized_property = object['status']
        output_object.status = deserialized_property

        deserialized_property = object['createdAt']
        deserialized_property = DateTime.parse(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.created_at = deserialized_property

        deserialized_property = object['serviceBusEndpoint']
        output_object.service_bus_endpoint = deserialized_property

        deserialized_property = object['subscriptionId']
        output_object.subscription_id = deserialized_property

        deserialized_property = object['scaleUnit']
        output_object.scale_unit = deserialized_property

        deserialized_property = object['enabled']
        output_object.enabled = deserialized_property

        deserialized_property = object['critical']
        output_object.critical = deserialized_property

        deserialized_property = object['namespaceType']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = NamespaceType.constants.any? { |e| NamespaceType.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum NamespaceType does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.namespace_type = deserialized_property

        output_object
      end
    end
  end
end
