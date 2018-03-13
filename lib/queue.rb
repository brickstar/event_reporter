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

  def print_id
    @queue.map do |attendee|
      attendee.id
    end
  end

  def print_regdate
    @queue.map do |attendee|
      attendee.regdate
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

  def print_email_address
    @queue.map do |attendee|
      attendee.email_address
    end
  end

  def print_phone_number
    @queue.map do |attendee|
      attendee.homephone
    end
  end

  def print_street
    @queue.map do |attendee|
      attendee.street
    end
  end

  def print_city
    @queue.map do |attendee|
      attendee.city
    end
  end

  def print_state
    @queue.map do |attendee|
      attendee.state
    end
  end
  
  def print_zipcode
    @queue.map do |attendee|
      attendee.zipcode
    end
  end

end
