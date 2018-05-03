require "faraday"
# require "colorme_public_api/endpoint"

module ColormePublicApi
  class Client
    def initialize(config = ColormePublicApi::Configuration.default)
      @configuration = config.dup
    end
  end
end