# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # Resource type managed by the resource provider.
    #
    class ProviderResourceType

      include MsRestAzure

      # @return [String] Gets or sets the resource type.
      attr_accessor :resource_type

      # @return [Array<String>] Gets or sets the collection of locations where
      # this resource type can be created in.
      attr_accessor :locations

      # @return [Array<String>] Gets or sets the api version.
      attr_accessor :api_versions

      # @return [Hash{String => String}] Gets or sets the properties.
      attr_accessor :properties

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @locations.each{ |e| e.validate if e.respond_to?(:validate) } unless @locations.nil?
        @api_versions.each{ |e| e.validate if e.respond_to?(:validate) } unless @api_versions.nil?
        @properties.each{ |e| e.validate if e.respond_to?(:validate) } unless @properties.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.resource_type
        output_object['resourceType'] = serialized_property unless serialized_property.nil?

        serialized_property = object.locations
        output_object['locations'] = serialized_property unless serialized_property.nil?

        serialized_property = object.api_versions
        output_object['apiVersions'] = serialized_property unless serialized_property.nil?

        serialized_property = object.properties
        output_object['properties'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ProviderResourceType] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ProviderResourceType.new

        deserialized_property = object['resourceType']
        output_object.resource_type = deserialized_property

        deserialized_property = object['locations']
        output_object.locations = deserialized_property

        deserialized_property = object['apiVersions']
        output_object.api_versions = deserialized_property

        deserialized_property = object['properties']
        output_object.properties = deserialized_property

        output_object
      end
    end
  end
end
