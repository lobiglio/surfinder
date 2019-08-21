class SurfForecastService
  require "http"
  def initialize(spot_id)
    @url = "http://magicseaweed.com/api/YOURAPIKEY/forecast/?spot_id=#{spot_id}&fields=timestamp,swell.primary,wind.*,condition.temperature,charts"
  end

  def call
    @forecasts = HTTP.get(@url).to_s
    @forecasts.each do |forecast|

    end
  end
end
