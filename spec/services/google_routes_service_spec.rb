require 'rails_helper'

RSpec.describe "google routes api test" do
  describe "get some api data?" do
    it "gets some data that is not an error" do
      service = GoogleRouteService.new
      connected = service.get_a_basic_connection
      
    end
  end
end
