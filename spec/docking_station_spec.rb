require 'docking_station'

describe DockingStation do
		describe 'responds to release_bike'
   	it {is_expected.to respond_to :release_bike}

		describe 'responds to docks_bike'
		it {is_expected.to respond_to :dock_bike}

		describe 'docks a bike'
		it {is_expected.to respond_to(:dock_bike).with(1).argument}

		describe 'no bikes available error message'
		it {expect {subject.release_bike}.to raise_error("No bikes available")}

		describe 'dock is full'
		it {expect {subject.dock_bike(Bike.new)}.to raise_error("Dock is full")if @bike}

end
