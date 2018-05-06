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

        def get_sales_id(id:, access_token:)
          get(
            path: "v1/sales/#{id}.json",
            access_token: access_token
          )
        end
      end
    end
  end
end