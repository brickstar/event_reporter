require_relative 'print_formatter'

class Q
  include PrintFormatter
  attr_reader :queue

  def initialize
    @queue = []
  end

  def clear
    @queue.clear
  end

  def count
    @queue.length
  end

  def add(data)
    @queue << data
  end

  def find(attribute, criteria)

  end

  def print_stuff
    max_character = find_max_characters
      create_line(headers, max_character)
    create_attendee_array.each do |attendee|
      create_line(attendee, max_character)
    end
  end

  def print_by(attribute)

  end

end
