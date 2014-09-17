require_relative 'bike_container'

class Van

	include BikeContainer
	def collect_broken_bikes_from(station)
		station.broken_bikes.each do |bike|
			dock(bike)
			station.release(bike)
		end
	end

#collect_fixed_bikes(garage)

#drop_fixed_bikes(station)
	def drop_broken_bikes_at(garage)
		self.broken_bikes.each do |bike|
			garage.dock(bike)
			self.release(bike)
		end
	end
end