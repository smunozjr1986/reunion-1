class Activity
  attr_reader :name,
              :participants
  def initialize(name)
    @name = name
    @participants = []
  end

  def add_participant(attendee)
    @participants << attendee
  end

  def total_cost
    @participants.map do |participant|
      participant.values[0]
    end.sum
  end

  def split_cost
  (total_cost / participants.length.to_f).round(1)
end

end
