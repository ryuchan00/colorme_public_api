require 'faraday'
require 'colorme_public_api/endpoint'

module ColormePublicApi
  class Client
    def initialize(config = ColormePublicApi::Configuration.default)
      @configuration = config.dup
    end

    def shop
      @shop ||= ColormePublicApi::Endpoint::V1::Shop.new(@configuration)
    end

    def sales
      @shop ||= ColormePublicApi::Endpoint::V1::Sales.new(@configuration)
    end
  end
end