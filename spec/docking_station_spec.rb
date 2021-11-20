# frozen_string_literal: true

it 'can dock a bike' do
  # arrange(set up)
  docking_station = DockingStation.new
  bike = Bike.new

  # act(execute)
  docking_station.dock(bike)
  result = docking_station.bikes == [bike]

  # assert(verify)
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

it 'will not release a bike if there are none' do
  docking_station = DockingStation.new
  result = docking_station.release
  assert_equals(result, 'Sorry, none available')
end

it 'has a default capacity constant of 20' do
  result = DockingStation::CAPACITY
  assert_equals(result, 20)
end

it 'can be initialize with a variable capacity' do
  capacity = 1
  docking_station = DockingStation.new(capacity: capacity)
  capacity.times { docking_station.dock(Bike.new) }

  result = docking_station.dock(Bike.new)
  assert_equals(result, 'Sorry, full')
end

it 'will not dock a bike when at or above capacity' do
  # arrange(set up)
  docking_station = DockingStation.new
  20.times { docking_station.dock(Bike.new) }

  # act(execute)
  result = docking_station.dock(Bike.new)

  # assert(verify)
  assert_equals(result, 'Sorry, full')
end

it 'will not release a bike if there are no working bikes' do
  docking_station = DockingStation.new(capacity: 1)
  bike = Bike.new
  bike.report
  docking_station.dock(bike)
  result = docking_station.release
  assert_equals(result, 'Sorry, all are broken')
end

it 'only releasees bikes that are working' do
  # the triple A
  # Arrange (set up)
  docking_station = DockingStation.new
  working_bike = Bike.new
  broken_bike = Bike.new
  broken_bike.report
  docking_station.dock(working_bike)
  docking_station.dock(broken_bike)

  # Act (execute)
  result = docking_station.release

  # Assert (verify)
  assert_equals(result, working_bike)
end
