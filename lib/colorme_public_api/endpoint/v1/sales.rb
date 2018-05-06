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

        def get_sales_stat(access_token:, params: nil)
          get(
            path: 'v1/sales/stat.json',
            access_token: access_token,
            params: params
          )
        end
      end
    end
  end
end