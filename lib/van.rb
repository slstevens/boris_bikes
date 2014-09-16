require_relative 'bike_container'

class Van

	include BikeContainer
	def collect_bikes(station)
		station.broken_bikes.each do |bike|
			dock(bike)
			station.release(bike)
		end
	end
end