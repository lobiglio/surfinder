class SurfForecastService
  require "http"
  def initialize(spot_id)
    @url = "http://magicseaweed.com/api/ENV[API KEY]/forecast/?spot_id=#{spot_id}&fields=timestamp,swell.primary,wind.*,condition.temperature,charts"
  end

  def call
    @forecasts = HTTP.get(@url).to_s

    {
      timestamp: @forecast[0][:timestamp],
      swell: @forecast[0][:swell.primary],
      wind: @forecast[0][:wind],
      condition: @forecast[0][:condition.temperature],
      chart: @forecast[0][:charts]
    }
  end
end
