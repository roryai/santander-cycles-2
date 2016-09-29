require 'docking_station'

describe DockingStation do
		describe 'responds to release_bike'
   	it {is_expected.to respond_to :release_bike}

		describe 'responds to docks_bike'
		it {is_expected.to respond_to :dock_bike}

		describe 'docks a bike'
		it {is_expected.to respond_to(:dock_bike).with(1).argument}

end
