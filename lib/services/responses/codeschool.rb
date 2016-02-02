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
        if response.kind_of? Hash
          [Services::Models::Codeschool.new(response)]
        else
          (response || []).map do |item|
            Services::Models::Codeschool.new(item)
          end
        end
      end
    end
  end
end
