require 'httparty'

module Services
  class Base
    attr_reader :client

    protected
    def http_client(client = HTTParty)
      @client = client
    end
  end
end
