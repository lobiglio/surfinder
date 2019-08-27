class SurfForecastService
  require "http"
  def initialize(spot_id)
    @url = "http://magicseaweed.com/api/e80fd637037c7379137bc52c070ca111/forecast/?spot_id=1531&fields=localTimestamp,swell.*,wind.*,condition.temperature"
  end

  def call
    @forecast = JSON.parse(HTTP.get(@url).to_s)
    {
      timestamp: @forecast[2]["localTimestamp"],
      swell: @forecast[2]["swell"]["components"]["primary"],
      wind: @forecast[2]["wind"],
      condition: @forecast[2]["condition"]["temperature"]
    }
  end

  def call_wind
    @url = "http://magicseaweed.com/api/e80fd637037c7379137bc52c070ca111/forecast/?spot_id=1531&fields=timestamp,wind.direction"
    JSON.parse(HTTP.get(@url).to_s).map { |l| [l["timestamp"], l["wind"]["direction"]] }.to_h
  end

  def call_swell
    @url = "http://magicseaweed.com/api/e80fd637037c7379137bc52c070ca111/forecast/?spot_id=1531&fields=timestamp,swell.components.primary.direction"
    JSON.parse(HTTP.get(@url).to_s).map { |l| [l["timestamp"], (l["swell"]["components"]["primary"]["direction"]).to_i] }.to_h
  end

  def call_height
    @url = "http://magicseaweed.com/api/e80fd637037c7379137bc52c070ca111/forecast/?spot_id=1531&fields=timestamp,swell.components.primary.height"
    JSON.parse(HTTP.get(@url).to_s).map { |l| [Time.at(l["timestamp"]).to_formatted_s(:short), (l["swell"]["components"]["primary"]["height"])] }.to_h
  end

  def call_speed
    @url = "http://magicseaweed.com/api/e80fd637037c7379137bc52c070ca111/forecast/?spot_id=1531&fields=timestamp,wind.speed"
    JSON.parse(HTTP.get(@url).to_s).map { |l| [Time.at(l["timestamp"]).to_formatted_s(:short), (l["wind"]["speed"])] }.to_h
  end
end
