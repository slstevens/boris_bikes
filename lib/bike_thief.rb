class BikeThief

	def steal_bike_from(station)
		@bike = station.available_bikes.pop
	end

	def has_bike?
		@bike != nil
	end

	def tries_to_return_bike_to(station)
		puts "You are a thief! You do not return stolen items!" 
	end
end