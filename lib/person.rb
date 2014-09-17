require_relative 'bike_container'

class Person

	def rent_bike_from(station)
		@bike = station.available_bikes.pop
	end

	def has_bike?
		@bike != nil
	end

	def return_bike_to(station)
		station.available_bikes<<@bike
	end
end