require 'pry'
require 'csv'
require_relative 'attendee'

class FileLoader

  def initialize(filename)
    @filename = filename
    @attendees = []
  end

  def load_file(filename = './data/event_attendees.csv')
   CSV.foreach(filename, headers: true, header_converters: :symbol) do |data|
     binding.pry
     @attendees << Attendee.new(data)
    end
  end

end
