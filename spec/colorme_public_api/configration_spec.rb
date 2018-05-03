describe ColormePublicApi::Configuration do
  describe "#initialize" do
    it "sets instance variables" do
      config = ColormePublicApi::Configuration.new

      expected_attributes = [
        :access_token
      ]
      expected_attributes.each do |attribute|
        expect(config.respond_to?(attribute)).to eq true
      end
    end
  end
end