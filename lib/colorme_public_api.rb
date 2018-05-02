require "colorme_public_api/version"
require "colorme_public_api/configuration"
require "colorme_public_api/client"

module ColormePublicApi
  class << self
    attr_reader :configuration

    def configure
      @configuration ||= ColormePublicApi::Configuration.new
      yield @configuration if block_given?
    end
  end
end
