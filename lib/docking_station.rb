

class DockingStation

	def release_bike
			fail "No bikes available"
	end

	def dock_bike(bike)
		@bike = bike
	end

	attr_reader :bike
	# line above equals 3 lines below
	# def bike
	# 	@bike
	# end

end
