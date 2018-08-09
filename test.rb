require "./lib/bike"
require "./lib/docking_station"

docking_station = DockingStation.new
docking_station.dock("1")
docking_station.release_bike
