# The NREL alternate fuel stations nearest station API: https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/nearest/
# The Google Directions API: https://developers.google.com/maps/documentation/directions/start
# We will be searching for the nearest electric charging station to Turing.

require 'rails_helper'

describe "user can see the nearest charging station" do
  scenario "use the drop down menu" do
    visit '/'
    select "Turing", from: :location
    click_on "Find Nearest Station"
    # Then I should see the closest electric fuel station to me.

    # For that station I should see
    # - Name
    # - Address
    # - Fuel Type
    # - Access Times

    expect(current_path).to eq("/search")
    expect(page).to have_content("Station Nearest You")
    expect(page).to have_css(".station")
    expect(page).to have_content("Name:")
    expect(page).to have_content("Address:")
    expect(page).to have_content("Fuel Type:")
    expect(page).to have_content("Access Times:")
  end
  scenario "travel instructions and informaiton" do
    visit '/'
    select "Turing", from: :location
    click_on "Find Nearest Station"


    # I should also see:
    # - the distance of the nearest station (should be 0.1 miles)
    # - the travel time from Turing to that fuel station (should be 1min)
    # - The HTML direction instructions to get to that fuel station
    # - "Head <b>southeast</b> on <b>17th St</b> toward <b>Larimer St</b>"


  end
end
