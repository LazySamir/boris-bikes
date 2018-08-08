require "docking_station"

describe DockingStation do
  describe "accept method: release bike" do
      it {is_expected.to respond_to :release_bike}
 end

  # it "accept method: release bike" do
  # expect(DockingStation.new).to respond_to(:release_bike)
  # end
  #
  # it "accept method: release_bike2" do
  #   expect(DockingStation.new.release_bike).to eql(nil)
  # end
  #
  # it "accept method: release_bike2" do
  #   expect{DockingStation.new.release_bike}.not_to raise_error
  # end

end
