# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # SSH configuration for Linux based VMs running on Azure
    #
    class SshConfiguration

      include MsRestAzure

      # @return [Array<SshPublicKey>] Gets or sets the list of SSH public keys
      # used to authenticate with linux based VMs
      attr_accessor :public_keys

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @public_keys.each{ |e| e.validate if e.respond_to?(:validate) } unless @public_keys.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.public_keys
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = SshPublicKey.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['publicKeys'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [SshConfiguration] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = SshConfiguration.new

        deserialized_property = object['publicKeys']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element1|
            unless element1.nil?
              element1 = SshPublicKey.deserialize_object(element1)
            end
            deserialized_array.push(element1)
          end
          deserialized_property = deserialized_array
        end
        output_object.public_keys = deserialized_property

        output_object
      end
    end
  end
end
