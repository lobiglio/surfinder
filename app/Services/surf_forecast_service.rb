class SurfForecastService
  require "http"
  def initialize(spot_id)
    #@url = "http://magicseaweed.com/api/ENV[API KEY]/forecast/?spot_id=#{spot_id}&fields=timestamp,swell.primary,wind.*,condition.temperature,charts"
    @url = "http://magicseaweed.com/api/ENV[STORMGLASS_API_KEY]/forecast/?spot_id=#{spot_id}&fields=timestamp,swell.primary,wind.*,condition.temperature,charts"
  end

  def call
    lat = 43.6649;
    lng = 17.8081;
    @weather = HTTP.get("https://api.stormglass.io/v1/weather/point?lat=${43.6649}&lng=${-1.3971}").to_s

    # {
    #   timestamp: @forecast[0][:timestamp],
    #   swell: @forecast[0][:swell.primary],
    #   wind: @forecast[0][:wind],
    #   condition: @forecast[0][:condition.temperature],
    #   chart: @forecast[0][:charts]
    # }
  end
end
