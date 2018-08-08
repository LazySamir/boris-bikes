require "docking_station"

describe DockingStation do
  describe "accept method: release_bike" do
    it {is_expected.to respond_to :release_bike}
  end

  describe "accept method: dock" do
    it {is_expected.to respond_to :dock}
  end

  # describe "accept method: dock with 1 argument" do
    # it {is_expected.to respond_to :dock(bike)}
  it "accept method: dock with 1 argument" do
    bike = Bike.new
    expect{DockingStation.new.dock(bike)}.not_to raise_error
  end

  # describe "accept method: see_docked_bike" do
  #   it {is_expected.to respond_to :see_docked_bike}
  # end

  describe ".see_docked_bike" do
    it "returns bike object" do
      bike = Bike.new
      docking_station = DockingStation.new
      docking_station.dock(bike)
      expect(docking_station.docked_bike).to eq bike
    end
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
