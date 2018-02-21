require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_it_exist
    activity = Activity.new("hiking")

    assert_instance_of Activity, activity
  end

  def test_it_has_an_activity
    activity = Activity.new("hiking")

    assert_equal "hiking", activity.name
  end

  def test_participants_is_empty
    activity = Activity.new("hiking")
    result = activity.participants

    assert_equal ([]), result
  end

  def test_activity_has_participants
    activity = Activity.new("hiking")
    attendees_1 = activity.add_participant({"Sergio" => 20})

    assert_equal attendees_1, activity.participants
  end
end
