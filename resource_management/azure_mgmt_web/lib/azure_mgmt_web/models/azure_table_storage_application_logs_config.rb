# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Application logs to azure table storage configuration
    #
    class AzureTableStorageApplicationLogsConfig

      include MsRestAzure

      # @return [LogLevel] Log level. Possible values include: 'Off',
      # 'Verbose', 'Information', 'Warning', 'Error'
      attr_accessor :level

      # @return [String] SAS url to an azure table with add/query/delete
      # permissions
      attr_accessor :sas_url

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

        serialized_property = object.level
        output_object['level'] = serialized_property unless serialized_property.nil?

        serialized_property = object.sas_url
        output_object['sasUrl'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [AzureTableStorageApplicationLogsConfig] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = AzureTableStorageApplicationLogsConfig.new

        deserialized_property = object['level']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = LogLevel.constants.any? { |e| LogLevel.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum LogLevel does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.level = deserialized_property

        deserialized_property = object['sasUrl']
        output_object.sas_url = deserialized_property

        output_object
      end
    end
  end
end
