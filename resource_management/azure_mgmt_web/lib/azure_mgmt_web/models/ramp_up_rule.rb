# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Routing rules for ramp up testing. This rule allows to redirect static
    # traffic % to a slot or to gradually change routing % based on
    # performance
    #
    class RampUpRule

      include MsRestAzure

      # @return [String] Hostname of a slot to which the traffic will be
      # redirected if decided to. E.g. mysite-stage.azurewebsites.net
      attr_accessor :action_host_name

      # @return [Float] Percentage of the traffic which will be redirected to
      # {Microsoft.Web.Hosting.Administration.RampUpRule.ActionHostName}
      attr_accessor :reroute_percentage

      # @return [Float] [Optional] In auto ramp up scenario this is the step
      # to to add/remove from
      # {Microsoft.Web.Hosting.Administration.RampUpRule.ReroutePercentage}
      # until it reaches
      # {Microsoft.Web.Hosting.Administration.RampUpRule.MinReroutePercentage}
      # or
      # {Microsoft.Web.Hosting.Administration.RampUpRule.MaxReroutePercentage}.
      # Site metrics are checked every N minutes specificed in
      # {Microsoft.Web.Hosting.Administration.RampUpRule.ChangeIntervalInMinutes}.
      # Custom decision algorithm can be provided in TiPCallback
      # site extension which Url can be specified in
      # {Microsoft.Web.Hosting.Administration.RampUpRule.ChangeDecisionCallbackUrl}
      attr_accessor :change_step

      # @return [Integer] [Optional] Specifies interval in mimuntes to
      # reevaluate ReroutePercentage
      attr_accessor :change_interval_in_minutes

      # @return [Float] [Optional] Specifies lower boundary above which
      # ReroutePercentage will stay.
      attr_accessor :min_reroute_percentage

      # @return [Float] [Optional] Specifies upper boundary below which
      # ReroutePercentage will stay.
      attr_accessor :max_reroute_percentage

      # @return [String] Custom decision algorithm can be provided in
      # TiPCallback site extension which Url can be specified. See
      # TiPCallback site extension for the scaffold and contracts.
      # https://www.siteextensions.net/packages/TiPCallback/
      attr_accessor :change_decision_callback_url

      # @return [String] Name of the routing rule. The recommended name would
      # be to point to the slot which will receive the traffic in the
      # experiment.
      attr_accessor :name

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

        serialized_property = object.action_host_name
        output_object['actionHostName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.reroute_percentage
        output_object['reroutePercentage'] = serialized_property unless serialized_property.nil?

        serialized_property = object.change_step
        output_object['changeStep'] = serialized_property unless serialized_property.nil?

        serialized_property = object.change_interval_in_minutes
        output_object['changeIntervalInMinutes'] = serialized_property unless serialized_property.nil?

        serialized_property = object.min_reroute_percentage
        output_object['minReroutePercentage'] = serialized_property unless serialized_property.nil?

        serialized_property = object.max_reroute_percentage
        output_object['maxReroutePercentage'] = serialized_property unless serialized_property.nil?

        serialized_property = object.change_decision_callback_url
        output_object['changeDecisionCallbackUrl'] = serialized_property unless serialized_property.nil?

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [RampUpRule] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = RampUpRule.new

        deserialized_property = object['actionHostName']
        output_object.action_host_name = deserialized_property

        deserialized_property = object['reroutePercentage']
        deserialized_property = Float(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.reroute_percentage = deserialized_property

        deserialized_property = object['changeStep']
        deserialized_property = Float(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.change_step = deserialized_property

        deserialized_property = object['changeIntervalInMinutes']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.change_interval_in_minutes = deserialized_property

        deserialized_property = object['minReroutePercentage']
        deserialized_property = Float(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.min_reroute_percentage = deserialized_property

        deserialized_property = object['maxReroutePercentage']
        deserialized_property = Float(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.max_reroute_percentage = deserialized_property

        deserialized_property = object['changeDecisionCallbackUrl']
        output_object.change_decision_callback_url = deserialized_property

        deserialized_property = object['name']
        output_object.name = deserialized_property

        output_object
      end
    end
  end
end
