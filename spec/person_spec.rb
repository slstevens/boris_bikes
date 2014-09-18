require 'docking_station'
require 'bike'
require 'person'

describe Person do

	let(:bike)        { Bike.new }
	let(:station)         { DockingStation.new }
	let(:person)      { Person.new }

	it "should be able to rent a bike" do
		station.dock(bike)
		person.rent_bike_from(station)
		expect(person.has_bike?).to eq true
	end

	it "should be able to return a bike" do
		station.dock(bike)
		person.rent_bike_from(station)
		expect(person.has_bike?).to eq true
		person.return_bike_to(station)
		expect(person.has_bike?).to eq false
	end

	it "should be able to break a bike" do
		station.dock(bike)
		person.rent_bike_from(station)
		person.crash
		expect(bike.broken?).to eq true
	end

end