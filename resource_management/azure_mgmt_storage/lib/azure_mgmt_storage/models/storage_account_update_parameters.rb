# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Storage
  module Models
    #
    # The parameters to provide for the account.
    #
    class StorageAccountUpdateParameters

      include MsRestAzure

      # @return [Sku] Gets or sets the sku type. Note that sku cannot be
      # updated to StandardZRS or ProvisionedLRS, nor can accounts of that
      # sku type be updated to any other value.
      attr_accessor :sku

      # @return [Hash{String => String}] Gets or sets a list of key value
      # pairs that describe the resource. These tags can be used in viewing
      # and grouping this resource (across resource groups). A maximum of 15
      # tags can be provided for a resource. Each tag must have a key no
      # greater than 128 characters and value no greater than 256 characters.
      attr_accessor :tags

      # @return [StorageAccountPropertiesUpdateParameters]
      attr_accessor :properties

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @sku.validate unless @sku.nil?
        @tags.each{ |e| e.validate if e.respond_to?(:validate) } unless @tags.nil?
        @properties.validate unless @properties.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.sku
        unless serialized_property.nil?
          serialized_property = Sku.serialize_object(serialized_property)
        end
        output_object['sku'] = serialized_property unless serialized_property.nil?

        serialized_property = object.tags
        output_object['tags'] = serialized_property unless serialized_property.nil?

        serialized_property = object.properties
        unless serialized_property.nil?
          serialized_property = StorageAccountPropertiesUpdateParameters.serialize_object(serialized_property)
        end
        output_object['properties'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [StorageAccountUpdateParameters] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = StorageAccountUpdateParameters.new

        deserialized_property = object['sku']
        unless deserialized_property.nil?
          deserialized_property = Sku.deserialize_object(deserialized_property)
        end
        output_object.sku = deserialized_property

        deserialized_property = object['tags']
        output_object.tags = deserialized_property

        deserialized_property = object['properties']
        unless deserialized_property.nil?
          deserialized_property = StorageAccountPropertiesUpdateParameters.deserialize_object(deserialized_property)
        end
        output_object.properties = deserialized_property

        output_object
      end
    end
  end
end
