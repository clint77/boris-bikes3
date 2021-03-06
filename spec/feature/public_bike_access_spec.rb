require 'docking_station'
require 'capybara/rspec'
feature 'member of public access bike' do
  scenario 'docking station releases a bike that is not broken' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).not_to be_broken
  end
end
