require 'docking_station'

describe DockingStation do
	
   	it {is_expected.to respond_to :release_bike} 
	

	describe 'create new instance of bike class using release_bike' do
    it {is_expected.to :release_bike}
	end

end

