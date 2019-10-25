class SearchController < ApplicationController

  def index
    search_for_station
    @station = "something_will_go_here_some_time"
  end

  def get_loctaion_data
    params[:location]
  end

  def search_for_station
    get_loctaion_data
    
    service = FuelStationService.new

  end

end
