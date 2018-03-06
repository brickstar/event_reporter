require 'pry'
require 'csv'
require_relative 'attendee'

class FileLoader

  def initialize(filename)
    @filename = filename
  end

  def load_file(filename = './data/event_attendees.csv')
    attendees = []
    CSV.foreach(filename, headers: true, header_converters: :symbol) do |data|
      attendees << Attendee.new(data)
    end
    attendees
  end

end
