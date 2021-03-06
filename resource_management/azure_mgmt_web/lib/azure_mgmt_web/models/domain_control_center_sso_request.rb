# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Single sign on request information for domain management
    #
    class DomainControlCenterSsoRequest

      include MsRestAzure

      # @return [String] Url where the single sign on request is to be made
      attr_accessor :url

      # @return [String] Post parameter key
      attr_accessor :post_parameter_key

      # @return [String] Post parameter value. Client should use
      # 'application/x-www-form-urlencoded' encoding for this value.
      attr_accessor :post_parameter_value

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

        serialized_property = object.url
        output_object['url'] = serialized_property unless serialized_property.nil?

        serialized_property = object.post_parameter_key
        output_object['postParameterKey'] = serialized_property unless serialized_property.nil?

        serialized_property = object.post_parameter_value
        output_object['postParameterValue'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [DomainControlCenterSsoRequest] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = DomainControlCenterSsoRequest.new

        deserialized_property = object['url']
        output_object.url = deserialized_property

        deserialized_property = object['postParameterKey']
        output_object.post_parameter_key = deserialized_property

        deserialized_property = object['postParameterValue']
        output_object.post_parameter_value = deserialized_property

        output_object
      end
    end
  end
end
