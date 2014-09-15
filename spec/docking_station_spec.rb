# link to the Docking Station class
require 'docking_station'
require 'bike'

describe DockingStation do

	it "should accept a bike" do
		bike = Bike.new 
		station = DockingStation.new
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end
end