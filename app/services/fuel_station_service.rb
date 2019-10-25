class FuelStationService

  def step_two_chunk_it_out
    one = get_a_basic_connection_step_one.get("fuel_type=ELEC&state=CA&limit=2")
    # binding.pry
    parsed_the_data_how_could_i_forget = JSON.parse(one.body, symbolize_names: true)
  end

  def get_a_basic_connection_step_one
    Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?",
                params: {'api_key' => ENV['FUEL_STATIONS_API_KEY']})
  end

  # i didnt get this functional for the work time we had. I feel confident with just a little
  # more time, i would have ended up with a funtional product. I feel much better about
  # this diagnostic than the last one. I would also appreciate a one on one review or
  # an in class review of this diagnostic. 

end
