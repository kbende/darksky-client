module Darksky
  class Client    
    attr_accessor :configuration
    
    def initialize(configuration = Darksky.configuration)
      @configuration = configuration
    end
        
    def forecast(latitude, longitude, opts={})
      url = "#{@configuration.host}/forecast/#{@configuration.api_key}/#{latitude},#{longitude}"
      query = build_query(opts)
      get("#{url}?#{query}") 
    end
    
    def time_machine(latitude, longitude, timestamp, opts={})
      url = "#{@configuration.host}/forecast/#{@configuration.api_key}/#{latitude},#{longitude},#{timestamp}"
      query = build_query(opts)
      get("#{url}?#{query}")
    end
    
    private
    
    def get(url)
      RestClient.get(url) { |response, request, result, &block|
        case response.code
        when 200
          Darksky::Forecast.new(JSON.parse(response.body, symbolize_names: true))
        when 403
          raise Darksky::RequestError.new("Forbidden", response, request, result)
        when 400
          raise Darksky::RequestError.new("Bad Request", response, request, result)
        else
          raise Darksky::RequestError.new("Unknown Error", response, request, result)
        end
      }
    end
    
    def build_query(params)
      URI.escape(params.collect{ |k,v| "#{k}=#{v}" }.join('&'))
    end
  end
end