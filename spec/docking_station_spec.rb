require 'docking_station'

describe DockingStation do
   it 'releases the bike' do
     expect(subject).to respond_to :bike_release
  end
end
