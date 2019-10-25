require 'rails_helper'

RSpec.describe "fuel service api test" do
  describe "get some api data?" do
    it "it returns something that is not an error" do
      service = FuelStationService.new
      service.get_a_basic_connection_step_one
      binding.pry
    end
  end
end
