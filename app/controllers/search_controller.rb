class SearchController < ApplicationController

  def index
    search_for_station
    @station = "something_will_go_here_some_time"
  end

  def get_loctaion_data
    params[:location]
  end

  def search_for_station
    split = get_loctaion_data.split(',')
    state = split.last.split.first
    service = FuelStationService.new
    station_data = service.step_two_chunk_it_out(state)
    
  end

end
