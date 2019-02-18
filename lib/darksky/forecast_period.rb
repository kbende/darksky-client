module Darksky
  class ForecastPeriod

    attr_accessor :icon, :summary, :entities

    def initialize(params)
      @icon = params.fetch(:icon, nil)
      @summary = params.fetch(:summary, nil)
      @entities = params.fetch(:data, []).map { |entity_data| Darksky::Entity.new(entity_data) }
    end
  end
end