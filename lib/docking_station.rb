class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    @bikes.push(bike) # or            @bikes << bike
  end

  def release
    @bikes.shift
  end
end