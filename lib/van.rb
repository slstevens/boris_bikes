require_relative 'bike_container'

class Van

	include BikeContainer

	def initialize(options = {})    
		  self.capacity = options.fetch(:capacity, capacity)
	end

	def collect_broken_bikes_from(station)
		station.broken_bikes.each do |bike|
			dock(bike)
			station.release_broken
		end
	end

	def collect_fixed_bikes_from(garage)
		garage.available_bikes.each do |bike|
			dock(bike)
			garage.release_available
		end
	end

	def drop_broken_bikes_at(garage)#when this method is called, will it work for each broken bike in the system? Do I need to use self?
		broken_bikes.each do |bike| 
			garage.dock(bike)
			release_broken
		end
	end

	def drop_fixed_bikes_at(station)
		available_bikes.each do |bike|
			station.dock(bike)
			release_available
		end
	end

end