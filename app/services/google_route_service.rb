class GoogleRouteService

  def lets_chunk_this(origin, destination)
    get_a_basic_connection.get("origin=#{origin}&destination=#{destination}&key=#{ENV['GOOGLE_API_KEY']}")
  end

  def get_a_basic_connection
    Faraday.new("https://maps.googleapis.com/maps/api/directions/json?")
  end

end
