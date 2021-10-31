it 'can dock a bike' do
  # arrange(set up)
  docking_station = DockingStation.new
  bike = Bike.new
  # act(execute)
  docking_station.dock(bike)
  result = docking_station.bikes == [bike]

  #assert(verify)
  assert_equals(result, true)
end

it 'can release a bike' do
  # the triple A
  # Arrange (set up)
  docking_station = DockingStation.new
  bike = Bike.new
  docking_station.dock(bike)

  # Act (execute)
  result = docking_station.release

  # Assert (verify)
  assert_equals(result, bike)
end
