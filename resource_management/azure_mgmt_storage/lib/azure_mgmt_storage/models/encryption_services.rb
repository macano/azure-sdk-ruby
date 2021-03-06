# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Storage
  module Models
    #
    # The encrypted services.
    #
    class EncryptionServices

      include MsRestAzure

      # @return [EncryptionService] The blob service.
      attr_accessor :blob

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @blob.validate unless @blob.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.blob
        unless serialized_property.nil?
          serialized_property = EncryptionService.serialize_object(serialized_property)
        end
        output_object['blob'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [EncryptionServices] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = EncryptionServices.new

        deserialized_property = object['blob']
        unless deserialized_property.nil?
          deserialized_property = EncryptionService.deserialize_object(deserialized_property)
        end
        output_object.blob = deserialized_property

        output_object
      end
    end
  end
end
