require 'docking_station'

describe DockingStation do
		describe 'responds to release'
   	it {is_expected.to respond_to :release}

		describe 'responds to docks'
		it {is_expected.to respond_to :dock}

		describe 'docks a bike'
		it {is_expected.to respond_to(:dock).with(1).argument}

		describe 'no bikes available error message'
		it {expect {subject.release}.to raise_error("No bikes available")}

		describe 'dock is full'
		it {expect {subject.dock(Bike.new)}.to raise_error("Dock is full")if @bike}

end
