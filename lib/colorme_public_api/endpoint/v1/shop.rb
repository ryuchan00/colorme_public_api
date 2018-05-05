module ColormePublicApi
  module Endpoint
    module V1
      class Shop < Base
        def get_shop(access_token:, params: nil)
          get(
            path: '/v1/shop.json',
            access_token: access_token,
            params: params
          )
        end
      end
    end
  end
end