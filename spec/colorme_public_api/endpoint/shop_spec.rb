describe ColormePublicApi::Endpoint::V1::Shop do
  describe '#get' do
    let(:client) { ColormePublicApi::Client.new(build_config) }
    let(:client) { ColormePublicApi::Client.new(build_config) }

    subject (:response) { client.shop.get_shop(access_token: test_access_token) }

    before do
      VCR.use_cassette('endpoint/v1/shop/get_success') do
        response
      end
    end

    it 'succeeds' do
      expect(!response['shop'].empty?).to be true
    end
  end
end