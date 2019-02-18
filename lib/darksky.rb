require "json"
require "rest-client"

require "darksky/version"
require "darksky/configuration"
require "darksky/client"
require "darksky/entity"
require "darksky/flag"
require "darksky/forecast"
require "darksky/forecast_period"

module Darksky
  class << self
    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end

    def reset
      configuration.reset
    end
  end
end
