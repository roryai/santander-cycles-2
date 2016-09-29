

class DockingStation

	def release_bike
		Bike.new
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


# station.dock_bike(bike)
