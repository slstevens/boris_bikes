module BikeContainer

	DEFAULT_CAPACITY = 20

	def bikes
		@bikes ||= []
	end

	def capacity 
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def bike_count
		bikes.count
	end

	def dock(bike)
		raise "No more room for bikes" if full?
		bikes << bike
	end

	def release_available
		raise "No available bikes to release" if bike_count == 0
		bikes.delete(available_bikes.pop)
	end

	def release_broken
		raise "No broken bikes to release" if bike_count == 0
		bikes.delete(broken_bikes.pop)
	end

	def full?
		bike_count == capacity
	end

	def available_bikes
		bikes.reject {|bike| bike.broken?}
	end

	def broken_bikes
		bikes.select { |bike| bike.broken?}
	end
end