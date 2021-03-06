# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # The plan object in an ARM, represents a marketplace plan
    #
    class ArmPlan

      include MsRestAzure

      # @return [String] The name
      attr_accessor :name

      # @return [String] The publisher
      attr_accessor :publisher

      # @return [String] The product
      attr_accessor :product

      # @return [String] The promotion code
      attr_accessor :promotion_code

      # @return [String] Version of product
      attr_accessor :version

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

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.publisher
        output_object['publisher'] = serialized_property unless serialized_property.nil?

        serialized_property = object.product
        output_object['product'] = serialized_property unless serialized_property.nil?

        serialized_property = object.promotion_code
        output_object['promotionCode'] = serialized_property unless serialized_property.nil?

        serialized_property = object.version
        output_object['version'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ArmPlan] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ArmPlan.new

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['publisher']
        output_object.publisher = deserialized_property

        deserialized_property = object['product']
        output_object.product = deserialized_property

        deserialized_property = object['promotionCode']
        output_object.promotion_code = deserialized_property

        deserialized_property = object['version']
        output_object.version = deserialized_property

        output_object
      end
    end
  end
end
