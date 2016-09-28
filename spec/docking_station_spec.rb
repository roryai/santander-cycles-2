require 'docking_station'

describe DockingStation do
  describe 'bike_release' do
   it 'releases the bike' do
     expect (DockingStation.new).respond_to? (:bike_release)
    end
  end
end
