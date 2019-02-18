module Darksky
  class Configuration
    HOST = 'https://api.darksky.net'

    attr_accessor :api_key
    attr_reader :host

    def initialize(api_key=nil)
      @host = HOST
      @api_key = api_key
    end

    def reset
      @api_key = nil
    end
  end
end