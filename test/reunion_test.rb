require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
  def test_it_exist
    reunion = Reunion.new("Denver")

    assert_instance_of Reunion, reunion
  end

  def test_it_has_location
    reunion = Reunion.new("Denver")

    assert_equal "Denver", reunion.location
  end

  def test_it_has_activities
    skip
    reunion = Reunion.new("Denver")

    activity = Activity.new("hiking")
    result = reunion.activities

    assert_equal ([]), result
  end
end
