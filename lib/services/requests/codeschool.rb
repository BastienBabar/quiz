require 'services/responses/codeschool'

module Services
  module Requests
    class Codeschool < Services::Base
      attr_reader :request

      def get
        response = Rails.cache.fetch("codeschool_cachekey", expires_in: 7.days) do
          http_client.get(base_uri).parsed_response
        end
        Services::Responses::Codeschool.new(response).models
      end

      private

      def base_uri
        'https://www.codeschool.com/users/bibar.json'
      end
    end
  end
end
