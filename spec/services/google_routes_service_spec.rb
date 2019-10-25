require 'rails_helper'

RSpec.describe "google routes api test" do
  describe "get some api data?" do
    it "gets some data that is not an error" do
      service = GoogleRouteService.new
      connected = service.get_a_basic_connection
      origin = "1331 17th St, Denver, CO 80202"
      destination = 
      step_two_is_working = service.lets_chunk_this(origin, destination)
    end
  end
end
