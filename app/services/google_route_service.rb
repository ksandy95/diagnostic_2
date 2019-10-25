class GoogleRouteService

  def get_a_basic_connection
    Faraday.get("https://maps.googleapis.com/maps/api/directions/json?origin=Disneyland&destination=Universal+Studios+Hollywood&key=#{ENV['GOOGLE_API_KEY']}")
  end

end
