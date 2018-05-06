describe ColormePublicApi::Endpoint::V1::Sales do
  describe '#get_sales' do
    let(:client) { ColormePublicApi::Client.new(build_config) }

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
    let(:client) { ColormePublicApi::Client.new(build_config) }

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
    let(:client) { ColormePublicApi::Client.new(build_config) }

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
    let(:client) { ColormePublicApi::Client.new(build_config) }

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
    let(:client) { ColormePublicApi::Client.new(build_config) }
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
end