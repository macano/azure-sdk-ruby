# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Storage
  module Models
    #
    # The SKU of the storage account.
    #
    class Sku

      include MsRestAzure

      # @return [SkuName] Gets or sets the sku name. Required for account
      # creation, optional for update. Note that in older versions, sku name
      # was called accountType. Possible values include: 'Standard_LRS',
      # 'Standard_GRS', 'Standard_RAGRS', 'Standard_ZRS', 'Premium_LRS'
      attr_accessor :name

      # @return [SkuTier] Gets the sku tier. This is based on the SKU name.
      # Possible values include: 'Standard', 'Premium'
      attr_accessor :tier

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail MsRest::ValidationError, 'property name is nil' if @name.nil?
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

        serialized_property = object.tier
        output_object['tier'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [Sku] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = Sku.new

        deserialized_property = object['name']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = SkuName.constants.any? { |e| SkuName.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum SkuName does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.name = deserialized_property

        deserialized_property = object['tier']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = SkuTier.constants.any? { |e| SkuTier.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum SkuTier does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.tier = deserialized_property

        output_object
      end
    end
  end
end
