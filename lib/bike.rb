class Bike

	attr_accessor :serial

	def initialize
		fix!()
		@serial = "LA-12345"

	end


	def broken?
		@broken
	end
	def break!
		@broken = true
		self
	end

	def fix!
		@broken = false
		self
	end
end
