class Q
  attr_reader :queue,
              :counter
  def initialize
    @queue = []
  end

  def clear
    @queue.clear
  end

  def add(data)
    @queue << data
  end

  def find(attribute, criteria)

  end

  def print_headers
      "LAST NAME\tFIRST NAME\tEMAIL\tZIPCODE\tCITY\tSTATE\tADDRESS\tPHONE\tDISTRICT"
  end

  def print_stuff
    puts print_headers
    queue.find_all do |attendee|
      puts "#{attendee.last_name}\t#{attendee.first_name}\t #{attendee.email_address}\t #{attendee.city}\t #{attendee.state}\t #{attendee.street}\t #{attendee.homephone}\tDISTRICT"
    end
  end


  def print_by(attribute)

  end

  def count
    @queue.length
  end
end
