# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # Export resource group template request parameters.
    #
    class ExportTemplateRequest

      include MsRestAzure

      # @return [Array<String>] Gets or sets the ids of the resources. The
      # only supported string currently is '*' (all resources). Future api
      # updates will support exporting specific resources.
      attr_accessor :resources

      # @return [String] The export template options. Supported values include
      # 'IncludeParameterDefaultValue', 'IncludeComments' or
      # 'IncludeParameterDefaultValue, IncludeComments
      attr_accessor :options

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @resources.each{ |e| e.validate if e.respond_to?(:validate) } unless @resources.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.resources
        output_object['resources'] = serialized_property unless serialized_property.nil?

        serialized_property = object.options
        output_object['options'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ExportTemplateRequest] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ExportTemplateRequest.new

        deserialized_property = object['resources']
        output_object.resources = deserialized_property

        deserialized_property = object['options']
        output_object.options = deserialized_property

        output_object
      end
    end
  end
end
