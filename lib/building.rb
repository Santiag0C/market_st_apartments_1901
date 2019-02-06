class Building
  attr_reader :building_units
  def initialize
    @building_units = []
  end
  def add_unit(building)
    @building_units << building
  end
end
