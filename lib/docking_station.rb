

class DockingStation

	def initialize
		@bikes = []
	end

	def release
			fail "No bikes available" if @bikes.count <= 0
			@bikes.pop
	end

	def dock(bike)
			fail "Dock is full" if @bikes.count >= 20
			@bikes << bike
	end


	attr_reader :bikes
	# line above equals 3 lines below
	# def bike
	# 	@bike
	# end

end
