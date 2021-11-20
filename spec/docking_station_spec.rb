# frozen_string_literal: true

require './lib/docking_station'
require './lib/bike'

describe 'docking_station' do
  it 'can dock a bike' do
    # the triple A
    # arrange(set up)
    docking_station = DockingStation.new
    bike = Bike.new

    # act(execute)
    docking_station.dock(bike)

    # assert(verify)
    expect(docking_station.bikes).to eq([bike])
  end

  it 'can release a bike' do
    # Arrange (set up)
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)

    # Act (execute) & Assert (verify)
    expect(docking_station.release).to eq(bike)
  end

  it 'will not release a bike if there are none' do
    docking_station = DockingStation.new

    expect(docking_station.release).to eq('Sorry, none available')
  end

  it 'has a default capacity constant of 20' do
    expect(DockingStation::CAPACITY).to eq(20)
  end

  it 'can be initialize with a variable capacity' do
    capacity = 1
    docking_station = DockingStation.new(capacity: capacity)
    capacity.times { docking_station.dock(Bike.new) }

    expect(docking_station.dock(Bike.new)).to eq('Sorry, full')
  end

  it 'will not dock a bike when at or above capacity' do
    # arrange(set up)
    docking_station = DockingStation.new
    20.times { docking_station.dock(Bike.new) }

    # act(execute) & assert(verify)
    expect(docking_station.dock(Bike.new)).to eq('Sorry, full')
  end

  it 'will not release a bike if there are no working bikes' do
    docking_station = DockingStation.new(capacity: 1)
    bike = Bike.new
    bike.report
    docking_station.dock(bike)

    expect(docking_station.release).to eq('Sorry, all are broken')
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
    #	result = docking_station.release

    # Assert (verify)

    expect(docking_station.release).to eq(working_bike)
  end
end
