require 'docking_station'
require 'bike'
require 'person'
require 'bike_thief'

describe BikeThief do

	let(:bike)        { Bike.new }
	let(:station)         { DockingStation.new }
	let(:thief)      { BikeThief.new }

	it "should be able to steal a bike" do
		station.dock(bike)
		thief.steal_bike_from(station)
		expect(thief.has_bike?).to eq true
	end

	it "should not be able to return the bike" do
		station.dock(bike)
		thief.steal_bike_from(station)
		thief.tries_to_return_bike_to(station)
		expect(thief.has_bike?).to eq true
	end

	# it "should be able to break bikes in station" do
	# end

end