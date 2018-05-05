describe ColormePublicApi::Endpoint::V1::Shop do
  describe '#get' do
    let(:client) { ColormePublicApi::Client.new(build_config) }

    context 'no paramater' do
      subject (:response) { client.shop.get(access_token: test_access_token) }

      before do
        VCR.use_cassette('endpoint/v1/shop/get_success') do
          response
        end
      end

      it 'succeeds' do
        expect(response['shop'].is_a?(Hash)).to be true
      end
    end
  end
end