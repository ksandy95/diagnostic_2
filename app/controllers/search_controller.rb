class SearchController < ApplicationController

  def index
    @station = "something_will_go_here_some_time"
  end

  def search_station(location)
    service = FuelStationService.new
    
  end

end
