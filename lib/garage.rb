require_relative 'bike_container'

class Garage
	include BikeContainer

	def initialize(options = {})    
		  self.capacity = options.fetch(:capacity, capacity)
	end

	def fix_broken_bike(broken_bike)
		broken_bikes.each do |bike|
			bike.fix!
		end
	end
end
