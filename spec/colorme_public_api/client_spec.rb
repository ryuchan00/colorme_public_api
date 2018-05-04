describe ColormePublicApi::Client do
  describe "#shop" do
    it "returns ColormePublicApi::Client::V1::Shop instance" do
      expect(ColormePublicApi::Client.new.shop).to be_a(ColormePublicApi::Endpoint::V1::Shop)
    end
  end
end

