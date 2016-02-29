require 'services/models/codeschool'

module Services
  module Responses
    class Codeschool
      attr_accessor :response, :models

      def initialize(response)
        @response = response
        @models = extract_models
      end

      def extract_models
        if parsed_response.kind_of? Hash
          [Services::Models::Codeschool.new(parsed_response)]
        end
      end

      def parsed_response
        JSON.parse(response) unless response.nil?
      end
    end
  end
end
