require 'rails_helper'

RSpec.describe "fuel service api test" do
  describe "get some api data?" do
    it "it returns something that is not an error" do
      service = FuelStationService.new
      connected = service.get_a_basic_connection_step_one
      step_two = service.step_two_chunk_it_out
      binding.pry
    end
  end
end
