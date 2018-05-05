describe ColormePublicApi::Endpoint::V1::Shop do
  describe '#get_shop' do
    let(:client) { ColormePublicApi::Client.new(build_config) }

    context 'no parameter' do
      subject (:response) { client.shop.get_shop(access_token: test_access_token) }

      before do
        VCR.use_cassette('endpoint/v1/shop/no_parameter_success') do
          response
        end
      end

      it 'succeeds' do
        expect(response['shop'].is_a?(Hash)).to be true
      end
    end

    context 'have parameters' do
      let(:params) { {
        fields: 'id,domain_plan'
      } }

      subject (:response) { client.shop.get_shop(access_token: test_access_token, params: params) }

      before do
        VCR.use_cassette('endpoint/v1/shop/have_parameters_success') do
          response
        end
      end

      it 'succeeds' do
        expect(response['shop']['id'].is_a?(String)).to be true
        expect(response['shop']['domain_plan'].is_a?(String)).to be true
        expect(response['shop']['state'].nil?).to be true
      end
    end
  end
end