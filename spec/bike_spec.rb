# link to the Bike class
require 'bike'
require 'spec_helper.rb'

# we're describing the functionality of a specific class, Bike
describe Bike do

	let(:bike) {Bike.new}

	it "should not be broken after we create it" do
		expect(bike).not_to be_broken
	end

	it "should be able to be broken" do
		bike.break!
		expect(bike).to be_broken
	end

	it "should be fixable" do
		bike.break!
		bike.fix!
		expect(bike).not_to be_broken
	end

	it "should have a unique serial number" do
		expect(bike.serial).to match(/^[A-Z]{2}-[\d]{5}$/)
	end

	it "should be able to set a new serial" do 
		bike.serial = "LA-54321"
		# bike.serial=("dfdf")
		expect(bike.serial).to eq("LA-54321")
	end

end
