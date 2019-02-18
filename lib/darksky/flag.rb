module Darksky
  class Flag
    attr_accessor :sources, :nearest_station, :units
    def initialize(params)
      @sources = params.fetch(:sources, [])
      @units = params.fetch(:units, nil)
      @nearest_station = params.fetch(:"nearest-station", nil)
    end
  end
end