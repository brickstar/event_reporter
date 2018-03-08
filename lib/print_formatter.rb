

module PrintFormatter

  def headers
    ["LAST NAME", "FIRST NAME", "EMAIL", "ZIPCODE", "CITY", "STATE", "ADDRESS", "PHONE", "DISTRICT"]
  end

  def create_attendee_array
    queue.map do |attendee|
      [attendee.last_name, attendee.first_name, attendee.email_address, attendee.zipcode, attendee.city, attendee.state, attendee.street, attendee.homephone, "DISTRICT"]
    end
  end

  def create_line(words, length)
    words.map do |word| word.ljust(length)
    end.join(" ")
  end

  def find_max_characters
    max_characters = create_attendee_array.flatten.max_by do |string|
      string.length
    end
    max_characters.length
  end

  # def find_max_characters #reduce
    # create_attendee_array.flatten.reduce(0) do |length, string|
    #   if string.length > length
    #     string.length
    #   else
    #     length
    #   end
    # end
  # end

end
