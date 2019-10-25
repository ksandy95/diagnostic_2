class FuelStationService

  def step_two_chunk_it_out
    get_a_basic_connection_step_one.get("fuel_type=ELEC&state=CA&limit=2")
  end

  def get_a_basic_connection_step_one
    Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?",
                params: {'api_key' => ENV['FUEL_STATIONS_API_KEY']})
  end

end
