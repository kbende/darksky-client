require 'spec_helper'

module Darksky
  describe Client do
    let(:api_key) { 'api_key' }
    let(:client) { Client.new }
        
    it 'initializes with a default configuration' do
      client = Darksky::Client.new

      expect(client.configuration.api_key).to be_nil
    end
    
    it 'initializes with a custom configuration' do
      configuration = Configuration.new
      configuration.api_key = api_key

      client = Client.new(configuration)
      expect(client.configuration.api_key).to eq(api_key)
    end
    
    describe '#forecast' do
    end
    
  end
end