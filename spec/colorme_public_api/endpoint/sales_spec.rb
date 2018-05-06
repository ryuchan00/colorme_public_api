describe ColormePublicApi::Endpoint::V1::Sales do
  let(:client) { ColormePublicApi::Client.new(build_config) }

  describe '#get_sales' do
    context 'no parameter' do
      subject (:response) { client.sales.get_sales(access_token: test_access_token) }

      before do
        VCR.use_cassette('endpoint/v1/sales/sales/no_parameter_success') do
          response
        end
      end

      it 'succeeds' do
        expect(response['meta'].is_a?(Hash)).to be true
      end
    end
  end

  describe '#get_sales_stat' do
    context 'no parameter' do
      subject (:response) { client.sales.get_sales_stat(access_token: test_access_token) }

      before do
        VCR.use_cassette('endpoint/v1/sales/get_sales_stat/no_parameter_success') do
          response
        end
      end

      it 'succeeds' do
        expect(response['sales_stat'].is_a?(Hash)).to be true
      end
    end
  end

  describe '#get_sales_stat' do
    context 'no parameter' do
      subject (:response) { client.sales.get_sales_stat(access_token: test_access_token) }

      before do
        VCR.use_cassette('endpoint/v1/sales/get_sales_stat/no_parameter_success') do
          response
        end
      end

      it 'succeeds' do
        expect(response['sales_stat'].is_a?(Hash)).to be true
      end
    end
  end

  describe '#get_sales_stat' do
    context 'no parameter' do
      subject (:response) { client.sales.get_sales_stat(access_token: test_access_token) }

      before do
        VCR.use_cassette('endpoint/v1/sales/get_sales_stat/no_parameter_success') do
          response
        end
      end

      it 'succeeds' do
        expect(response['sales_stat'].is_a?(Hash)).to be true
      end
    end
  end

  describe '#get_sales_id' do
    # カセットを作り直す時は、APIサーバー側に存在するsales_idにする。
    let(:id) { '85245031' }

    context 'no parameter' do
      subject (:response) { client.sales.get_sales_id(id: id, access_token: test_access_token) }

      before do
        VCR.use_cassette('endpoint/v1/sales/get_sales_id/no_parameter_success') do
          response
        end
      end

      it 'succeeds' do
        expect(response['sale']['id'].to_s).to eq id
      end
    end
  end

  describe '#put_sales_id' do
    # カセットを作り直す時は、APIサーバー側に存在するsales_idにする。
    let(:id) { '85245031' }
    let(:params) {
      {
        sale: {
          paid: true,
          sale_deliveries: [{
            name: 'test deliver'
          }]
        }
      }
    }

    context 'no parameter' do
      subject (:response) { client.sales.put_sales_id(id: id, access_token: test_access_token, params: params) }

      before do
        VCR.use_cassette('endpoint/v1/sales/put_sales_id/no_parameter_success') do
          response
        end
      end

      it 'succeeds' do
        expect(response['sale']['id'].to_s).to eq id
      end
    end
  end

  describe '#post_sales_id_mail' do
    # カセットを作り直す時は、APIサーバー側に存在するsales_idにする。
    let(:id) { '85245031' }
    let(:params) {
      {
        mail: {
          type: 'accepted'
        }
      }
    }

    context 'no parameter' do
      subject (:response) { client.sales.post_sales_id_mails(id: id, access_token: test_access_token, params: params) }

      before do
        VCR.use_cassette('endpoint/v1/sales/post_sales_id_mails/no_parameter_success') do
          response
        end
      end

      it 'succeeds' do
        expect(response.nil?).to eq true
      end
    end
  end
end