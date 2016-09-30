class DockingStation
DEFAULT_CAPACITY = 20
attr_reader :bikes

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
		 return true if @bikes.count >= DEFAULT_CAPACITY
	end

	def empty?
		return true if @bikes.empty?
	end

end

class Bike

  def working?
  end

end
