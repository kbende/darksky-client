module Darksky
  class Forecast
    
    attr_accessor :latitude, :longitude, :timezone, :currently, :minutely, :hourly, :daily, :flags, :offset
    
    def initialize(params)
      @latitude = params.fetch(:latitude, nil)
      @longitude = params.fetch(:longitude, nil)
      @timezone = params.fetch(:timezone, nil)
      @offset = params.fetch(:offset, nil)
      @currently = Darksky::Entity.new(params.fetch(:currently, {}))
      @minutely = Darksky::ForecastPeriod.new(params.fetch(:minutely, {}))
      @hourly = Darksky::ForecastPeriod.new(params.fetch(:hourly, {}))
      @daily = Darksky::ForecastPeriod.new(params.fetch(:daily, {}))
      @flags = Darksky::Flag.new(params.fetch(:flags, {}))
    end

  end
end