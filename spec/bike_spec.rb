require 'bike'

describe Bike do
  describe "responds to .working?" do
    it { is_expected.to respond_to :working? }
  end

  it ".working? returns true" do
    expect(subject.working?).to eq true
  end
end
