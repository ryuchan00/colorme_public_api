describe ColormePublicApi::Endpoint::V1::Sales do
  describe '#get' do
    let(:client) { ColormePublicApi::Client.new(build_config) }

    context 'no parameter' do
      subject (:response) { client.sales.get_sales(access_token: test_access_token) }

      before do
        VCR.use_cassette('endpoint/v1/sales/no_parameter_success') do
          response
        end
      end

      it 'succeeds' do
        expect(response['meta'].is_a?(Hash)).to be true
      end
    end
  end
end