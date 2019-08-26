class SurfForecastService
  require "http"
  def initialize(spot_id)
    @url = "http://magicseaweed.com/api/e80fd637037c7379137bc52c070ca111/forecast/?spot_id=1531&fields=localTimestamp,swell.*,wind.*,condition.temperature"
  end

  def call
    @forecast = JSON.parse(HTTP.get(@url).to_s)
    {
      timestamp: @forecast[0]["localTimestamp"],
      swell: @forecast[0]["swell"]["components"]["primary"],
      wind: @forecast[0]["wind"],
      condition: @forecast[0]["condition"]["temperature"]
    }
  end

  def call_wind
    @url = "http://magicseaweed.com/api/e80fd637037c7379137bc52c070ca111/forecast/?spot_id=1531&fields=timestamp,wind.direction"
    JSON.parse(HTTP.get(@url).to_s).map{|l| [l["timestamp"], l["wind"]["direction"]]}.to_h
  end
end
