module ColormePublicApi
  class Configuration
    attr_accessor :access_token

    def self.default
      @default ||= (ColormePublicApi.configuration || ColormePublicApi::Configuration.new)
    end
  end
end