require 'bike'
describe DockingStation do
	docking_station = DockingStation.new

		describe 'responds to release'
   	it {is_expected.to respond_to :release}

		describe 'responds to docks'
		it {is_expected.to respond_to :dock}

		describe 'docks a bike'
		it {is_expected.to respond_to(:dock).with(1).argument}

		describe 'no bikes available error message'
		it {expect {subject.release}.to raise_error("No bikes available") if !@bikes}

		# describe 'dock gives an error when it is at capacity'
		# DEFAULT_CAPACITY.times {docking_station.dock(Bike.new)}
		# it {expect {docking_station.dock(Bike.new)}.to raise_error("Dock is full")}

end

describe "#capacity" do
	docking_station = DockingStation.new
	DockingStation::DEFAULT_CAPACITY.times {docking_station.dock(Bike.new)}
	it 'raises an error when station is at capacity'do
		expect {docking_station.dock(Bike.new)}.to raise_error("Dock is full")
	end
end
# describe 'dock is full'
# docking_station.dock(Bike.new)
# it {expect {docking_station.dock(Bike.new)}.to raise_error("Dock is full")if @bike}
