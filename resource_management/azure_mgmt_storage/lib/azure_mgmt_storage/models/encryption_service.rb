# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Storage
  module Models
    #
    # An encrypted service.
    #
    class EncryptionService

      include MsRestAzure

      # @return [Boolean] A boolean indicating whether or not the service is
      # encrypted.
      attr_accessor :enabled

      # @return [DateTime] Gets a time value indicating when was the
      # encryption enabled by the user last time. We return this value only
      # when encryption is enabled. There might be some unencrypted blobs
      # which were written after this time. This time is just to give a rough
      # estimate of when encryption was enabled.
      attr_accessor :last_enabled_time

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        # Nothing to validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.enabled
        output_object['enabled'] = serialized_property unless serialized_property.nil?

        serialized_property = object.last_enabled_time
        serialized_property = serialized_property.new_offset(0).strftime('%FT%TZ')
        output_object['lastEnabledTime'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [EncryptionService] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = EncryptionService.new

        deserialized_property = object['enabled']
        output_object.enabled = deserialized_property

        deserialized_property = object['lastEnabledTime']
        deserialized_property = DateTime.parse(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.last_enabled_time = deserialized_property

        output_object
      end
    end
  end
end
