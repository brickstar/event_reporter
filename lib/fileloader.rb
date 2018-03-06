require 'pry'
require 'csv'

class FileLoader

  def initialize(filename)
    @filename = filename
    @attendees = []
  end

  def load_file(filename)
   CSV.foreach('./data/event_attendees.csv', headers: true, header_converters: :symbol) do |row|
    end
  end


end
