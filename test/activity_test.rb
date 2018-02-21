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

  def test_add_more_participant
    activity = Activity.new("hiking")
    attendees_1 = activity.add_participant({"Sergio" => 30})
    attendees_2 = activity.add_participant({"Luke" => 20})
    attendees_3 = activity.add_participant({"Rosa" => 40})

    assert_equal [{"Sergio" => 30}, {"Luke" => 20}, {"Rosa" => 40}], activity.participants
  end

  def test_activitiy_total_cost
    activity = Activity.new("hiking")
    attendees_1 = activity.add_participant({"Sergio" => 30})
    attendees_2 = activity.add_participant({"Luke" => 20})
    attendees_3 = activity.add_participant({"Rosa" => 40})
    result = activity.total_cost

    assert_equal 90, result
  end

  def test_split_activity_cost
    activity = Activity.new("hiking")
    attendees_1 = activity.add_participant({"Sergio" => 30})
    attendees_2 = activity.add_participant({"Luke" => 20})
    attendees_3 = activity.add_participant({"Rosa" => 42})

    assert_equal 30.7, activity.split_cost
  end
end
