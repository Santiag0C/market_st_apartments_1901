require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require 'pry'

class RenterTest < Minitest::Test
  def setup
    @jessie = Renter.new("Jessie")
  end
  def test_jessie
    assert_instance_of Renter, @jessie
  end
  def test_jessie_NAME
    assert_equal "Jessie", @jessie.name
  end
  def test_apt
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal "A1",a1.number
    assert_equal 1200, a1.monthly_rent
    assert_equal 1, a1.bathrooms
    assert_equal 1, a1.bedrooms
    assert_nil a1.renter
    a1.add_renter("Jessie")
    assert_equal "Jessie", a1.renter

  end
end
