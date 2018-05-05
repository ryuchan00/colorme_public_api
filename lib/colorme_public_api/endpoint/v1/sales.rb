module ColormePublicApi
  module Endpoint
    module V1
      class Sales < Base
        def get_sales(access_token:, params: nil)
          get(
            path: '/v1/sales.json',
            access_token: access_token,
            params: params
          )
        end
      end
    end
  end
end