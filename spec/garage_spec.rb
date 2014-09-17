require 'van'
require 'bike'
require 'garage'
require 'spec_helper'

describe Van do 

	let(:bike)        { Bike.new }
	let(:broken_bike) { Bike.new.break! }
	let(:van)         { Van.new }
	let(:garage)      { Garage.new(:capacity => 100) }

	it "should fix broken bikes" do
		garage.dock(broken_bike)
		garage.fix_broken_bike(broken_bike)
		expect(garage.available_bikes).to eq [broken_bike]
	end
end