

class DockingStation

	def release_bike
			fail "No bikes available" unless @bike
			@bike
	end

	def dock_bike(bike)
			fail "Dock is full" if @bike
			@bike = bike
	end


	attr_reader :bike
	# line above equals 3 lines below
	# def bike
	# 	@bike
	# end

end
