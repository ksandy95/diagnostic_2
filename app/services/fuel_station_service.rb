class FuelStationService

  def get_a_basic_connection_step_one
    Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=ELEC&state=CA&limit=2&api_key=#{ENV['FUEL_STATIONS_API_KEY']}")
  end

end
