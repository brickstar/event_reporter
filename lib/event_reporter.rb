require 'pry'

class EventReporter
  attr_reader :queue

  def initialize
    @queue = Queue.new

    contents = File.read "event_attendees.csv"
  end


end
