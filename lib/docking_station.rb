# frozen_string_literal: true

class DockingStation
  CAPACITY = 20
  attr_reader :bikes

  def initialize(capacity: CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def dock(bike)
    return 'Sorry, full' if full?

    @bikes.push(bike) # or            @bikes << bike
  end

  def release
    return 'Sorry, no bikes available' if empty?

    @bikes.pop
  end

  private

  def empty?
    bikes.length.zero?
  end

  def full?
    bikes.length >= @capacity
  end
end
