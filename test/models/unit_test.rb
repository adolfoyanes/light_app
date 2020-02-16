require 'test_helper'

class UnitTest < ActiveSupport::TestCase
  setup do
    @unit = units(:studio)
  end

  test '#valid?' do
    assert @unit.valid?
  end

  test '#price' do
    assert_equal 149.99, @unit.price
  end

  test '#name' do
    assert_equal 'Studio Unit', @unit.name
  end

  test '#description' do
    assert_match /MRT station/, @unit.description
  end

  test '#area' do
    assert_equal 37, @unit.area
  end

  test '#uom' do
    assert_equal 'sqm', @unit.uom
  end

  test 'should bring brewery data' do 
    Unit.delete_all
    response = Unit.load_data("https://api.openbrewerydb.org/breweries")
    # assert_equal 200, response[0]
    assert_equal 20, Unit.count
    test_brew = Unit.find_by_name("Diamond Bear Brewing Co")
    assert_not_nil test_brew
    assert_not_nil test_brew.description
  end
end
