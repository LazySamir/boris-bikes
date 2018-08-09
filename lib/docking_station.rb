require_relative 'bike'

class DockingStation
  attr_reader :docked_bike

  def release_bike
    @docked_bike ? @docked_bike : raise("no bikes")
  end

  def dock(bike)
    fail "full capacity" if @docked_bike
    @docked_bike = bike
  end

end

# class DockingStation
#   # other methods omitted for brevity
#   def release_bike
#     fail 'No bikes available' unless @bike
#     @bike
#   end
# end
