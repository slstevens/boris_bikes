require 'bike'
require 'van'
require 'docking_station'
require 'garage'
require 'spec_helper.rb'

describe Van do 

	let(:bike)        { Bike.new }
	let(:broken_bike) { Bike.new.break! }
	let(:van)         { Van.new(:capacity => 40) }
	let(:station)     { DockingStation.new }
	let(:garage)      { Garage.new }


	it "should collect broken bikes from docking station" do
		station.dock(bike)
		station.dock(broken_bike)
		van.collect_broken_bikes_from(station)
		expect(van.bikes).to eq ([broken_bike])
		expect(station.broken_bikes).to eq ([]) #i don't think this is needed
	end


	it "should drop broken bikes at garage" do
		van.dock(broken_bike)
		expect(van.bikes).to eq ([broken_bike])
		van.drop_broken_bikes_at(garage)
		expect(van.broken_bikes).to eq []
		expect(garage.bikes).to eq [broken_bike]
	end

	it "should collect fixed bikes from garage" do
		garage.dock(broken_bike)
		garage.dock(bike)
		van.collect_fixed_bikes_from(garage)
		expect(van.bikes).to eq([bike])
	end

	it "should drop fixed biked at docking station" do
		van.dock(bike)
		expect(van.bikes).to eq ([bike])
		van.drop_fixed_bikes_at(station)
		expect(van.bikes).to eq []
		expect(station.bikes).to eq [bike]
	end
=begin

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
This isn't correct because the broken bikes that the van docks is not the same as the number it will collect (necessarily)
=end
end

