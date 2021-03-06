require "docking_station"

describe DockingStation do
let(:mockBike)  { double :bike, working?: true}
  describe "accept method: release_bike" do
    #refactor with "/#release_bike" in describe
    #then keep all methods relating to class in one section
    it {is_expected.to respond_to :release_bike}
  end

  it "release_bike the raise error if no instance of bike" do
    expect{subject.release_bike}.to raise_error("no bikes")
  end
  it "will release a bike if there is one" do
    subject.dock(mockBike)
    expect(subject.release_bike).to eq mockBike
  end


  describe "#dock" do
    it {is_expected.to respond_to :dock}
    it "to reject a bike when capacity is full" do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(mockBike)}
      expect{subject.dock(mockBike)}.to raise_error("full capacity")
    end
    it "will allow to store bikes up to capacity" do
      (DockingStation::DEFAULT_CAPACITY - 1).times { subject.dock(mockBike)}
      expect(subject.dock(mockBike)).to eq mockBike
    end

  end

  # describe "accept method: dock with 1 argument" do
    # it {is_expected.to respond_to :dock(bike)}
  it "accept method: dock with 1 argument" do
    expect{subject.dock(mockBike)}.not_to raise_error
  end

  # describe "accept method: see_docked_bike" do
  #   it {is_expected.to respond_to :see_docked_bike}
  # end

  describe ".see_docked_bike" do
    it "returns bike object" do
      subject.dock(mockBike)
      expect(subject.docked_bike).to eq mockBike
    end
  end

  describe ".new" do
    let(:cap) {30}
    let(:sub2) {DockingStation.new(cap)}
    it "allows maintenance to set the capacity of a new DS" do
      expect(sub2.capacity).to eq cap
    end
    it "stops going over set capacity of bikes" do
      cap.times {sub2.dock(mockBike)}
      expect(sub2.dock(mockBike)).to raise_error("full capacity")
    end
    it "allows us to up to new capacity of bikes" do
      (cap-1).times {sub2.dock(mockBike)}
      expect(sub2.dock(mockBike)).to eq mockBike
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
