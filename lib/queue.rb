class Q
  attr_reader :queue,
              :counter
  def initialize
    @queue = []
  end

  def clear
    @queue.clear
  end

  def add(attendee)
    @queue << attendee
  end

  def print

  end

  def print_by(attribute)

  end

  def count
    @queue.length
  end
end
