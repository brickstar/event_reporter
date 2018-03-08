class Q
  attr_reader :queue,
              :counter
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

  def headers
    ["LAST NAME", "FIRST NAME", "EMAIL", "ZIPCODE", "CITY", "STATE", "ADDRESS", "PHONE", "DISTRICT"]
  end

  def print_stuff
    max_character = find_max_characters
      create_line(headers, max_character)
    create_attendee_array.each do |attendee|
      create_line(attendee, max_character)
    end
  end

  def create_attendee_array
    queue.map do |attendee|
      [attendee.last_name, attendee.first_name, attendee.email_address, attendee.zipcode, attendee.city, attendee.state, attendee.street, attendee.homephone, "DISTRICT"]
    end
  end

  def create_line(words, length)
    words.map { |word| word.ljust(length) }.join(" ")
  end

  def find_max_characters
    create_attendee_array.flatten.reduce(0) do |length, string|
      if string.length > length
        string.length
      else
        length
      end
    end
  end

  def print_by(attribute)

  end

end
