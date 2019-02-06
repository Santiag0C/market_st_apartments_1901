require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require './lib/building'

class RenterTest < Minitest::Test
  def setup
    @building = Building.new
  end
  def test_building_instance
    assert_instance_of Building, @building
  end
  def test_building_units
    assert_equal [], @building.building_units

  end
  def test_building_adder

    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @building ,add_unit(a1)
    @building ,add_unit(a2)
    assert_equal , @building.building_units
  end

  
end
