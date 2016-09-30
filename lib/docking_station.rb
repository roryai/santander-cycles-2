class DockingStation

	attr_reader :bikes
	# line above equals 3 lines below
	# def bike
	# 	@bike
	# end

	def initialize
		@bikes = []
	end

	def release
			fail "No bikes available" if empty?
			@bikes.pop
	end

	def dock(bike)
			fail "Dock is full" if full?
			@bikes << bike
	end

	private

	def full?
		 return true if @bikes.count >= 20
	end

	def empty?
		return true if @bikes.empty?
	end

end

class Bike

  def working?
  end

end
