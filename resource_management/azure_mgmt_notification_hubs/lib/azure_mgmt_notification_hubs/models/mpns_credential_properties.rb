# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Description of a NotificationHub MpnsCredential.
    #
    class MpnsCredentialProperties

      include MsRestAzure

      # @return [String] Gets or sets the MPNS certificate.
      attr_accessor :mpns_certificate

      # @return [String] Gets or sets the certificate key for this credential.
      attr_accessor :certificate_key

      # @return [String] Gets or sets the Mpns certificate Thumbprint
      attr_accessor :thumbprint

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

        serialized_property = object.mpns_certificate
        output_object['mpnsCertificate'] = serialized_property unless serialized_property.nil?

        serialized_property = object.certificate_key
        output_object['certificateKey'] = serialized_property unless serialized_property.nil?

        serialized_property = object.thumbprint
        output_object['thumbprint'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [MpnsCredentialProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = MpnsCredentialProperties.new

        deserialized_property = object['mpnsCertificate']
        output_object.mpns_certificate = deserialized_property

        deserialized_property = object['certificateKey']
        output_object.certificate_key = deserialized_property

        deserialized_property = object['thumbprint']
        output_object.thumbprint = deserialized_property

        output_object
      end
    end
  end
end
