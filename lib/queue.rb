require_relative 'print_formatter'
# require_relative 'attendee'

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

  def add(attendee)
    @queue << attendee
  end

  def find(attribute, criteria)

  end

  def print_stuff
    max_character = find_max_characters
      create_table(headers, max_character)
    create_attendee_array.each do |attendee|
      create_table(attendee, max_character)
    end
  end

  def print_first_name
    @queue.map do |attendee|
      attendee.first_name
    end
  end

  def print_last_name
    @queue.map do |attendee|
      attendee.last_name
    end
  end

  def print_id
    @queue.map do |attendee|
      attendee.id
    end
  end

end
