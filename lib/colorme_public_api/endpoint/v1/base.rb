require 'json'

module ColormePublicApi
  module Endpoint
    module V1
      class Base
        STAGING_URL = 'https://api.shop-pro.jp/'.freeze

        def initialize(config)
          @configuration = config
          @connection = Faraday::Connection.new
        end

        def get(path:, access_token:, params: nil)
          response = @connection.get do |req|
            req.url(request_url(path))
            req.headers['Content-Type'] = 'application/json'
            req.headers['Authorization'] = ' Bearer ' + access_token
            req.params.merge!(params) if params
          end
          JSON.parse(response.body)
        end

        def request_url(path)
          URI.join(api_endpoint, path).to_s
        end

        def api_endpoint
          STAGING_URL
        end
      end
    end
  end
end