require 'bike'
require 'van'
require 'docking_station'
require 'garage'
require 'spec_helper.rb'

describe Van do 

	it "should collect broken bikes from docking station" do
		van = Van.new
		station = DockingStation.new
		bike = Bike.new
		broken_bike = Bike.new.break!
		station.dock(bike)
		station.dock(broken_bike)
		expect(van.collect_bikes(station)).to eq ([broken_bike])
		expect(station.broken_bikes).to eq ([])
	end

	#should dock in van fixed bikes from garage

	it "should collect fixed bikes from garage" do
		van = Van.new
		garage = Garage.new
		bike = Bike.new
		broken_bike = Bike.new.break!
		van.dock(bike)
		van.dock(broken_bike)
		expect(van.broken_bikes).to eq ([broken_bike])
	end
end

