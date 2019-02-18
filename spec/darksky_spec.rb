require "spec_helper"

RSpec.describe Darksky do
  it "has a version number" do
    expect(Darksky::VERSION).not_to be nil
  end

  describe '.configure' do
    it 'sets the configuration' do
      api_key = 'KEY'
      Darksky.configure { |c| c.api_key = api_key }

      expect(Darksky.configuration.api_key).to eq(api_key)
    end
  end

  describe '.reset' do
    it 'resets the configuration' do
      expect(Darksky.configuration).to receive(:reset).at_least(:once)

      Darksky.reset
    end
  end
end