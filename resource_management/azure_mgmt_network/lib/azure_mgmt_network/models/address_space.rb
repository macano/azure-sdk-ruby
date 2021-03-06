# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # AddressSpace contains an array of IP address ranges that can be used by
    # subnets
    #
    class AddressSpace

      include MsRestAzure

      # @return [Array<String>] Gets or sets List of address blocks reserved
      # for this virtual network in CIDR notation
      attr_accessor :address_prefixes

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @address_prefixes.each{ |e| e.validate if e.respond_to?(:validate) } unless @address_prefixes.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.address_prefixes
        output_object['addressPrefixes'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [AddressSpace] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = AddressSpace.new

        deserialized_property = object['addressPrefixes']
        output_object.address_prefixes = deserialized_property

        output_object
      end
    end
  end
end
