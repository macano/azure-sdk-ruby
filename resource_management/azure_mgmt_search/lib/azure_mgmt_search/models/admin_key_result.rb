# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Search
  module Models
    #
    # Response containing the primary and secondary API keys for a given Azure
    # Search service.
    #
    class AdminKeyResult

      include MsRestAzure

      # @return [String] Gets the primary API key of the Search service.
      attr_accessor :primary_key

      # @return [String] Gets the secondary API key of the Search service.
      attr_accessor :secondary_key

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

        serialized_property = object.primary_key
        output_object['primaryKey'] = serialized_property unless serialized_property.nil?

        serialized_property = object.secondary_key
        output_object['secondaryKey'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [AdminKeyResult] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = AdminKeyResult.new

        deserialized_property = object['primaryKey']
        output_object.primary_key = deserialized_property

        deserialized_property = object['secondaryKey']
        output_object.secondary_key = deserialized_property

        output_object
      end
    end
  end
end
