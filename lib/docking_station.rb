require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity
  def initialize(capacity = DEFAULT_CAPACITY)
    @docked_bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "no bikes" if empty?
    @docked_bikes.pop
  end

  def dock(bike)
    fail "full capacity" if full?
    @docked_bikes << bike
    @docked_bikes.last
  end

  def docked_bike
    @docked_bikes.last
  end

private

  def empty?
    @docked_bikes.empty?
  end

  def full?
    @docked_bikes.length == @capacity
  end
end

# figure out why you cant use self with private.
# why don't use self.empty in release_bike method

# class DockingStation
#   # other methods omitted for brevity
#   def release_bike
#     fail 'No bikes available' unless @bike
#     @bike
#   end
# end
