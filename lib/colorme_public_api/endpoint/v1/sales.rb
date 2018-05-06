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

        def put_sales_id(id:, access_token:, params:)
          put(
            path: "v1/sales/#{id}.json",
            access_token: access_token,
            params: params
          )
        end

        def post_sales_id_mails(id:, access_token:, params:)
          post(
            path: "v1/sales/#{id}/mails.json",
            access_token: access_token,
            params: params
          )
        end
      end
    end
  end
end