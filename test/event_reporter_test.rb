require './lib/event_reporter'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class EventReporterTest < Minitest::Test

  def test_it_exists
    er = EventReporter.new

    assert_instance_of EventReporter, er
  end

  def test_it_has_event_attendees
    er = EventReporter.new
    contents = File.load "event_attendees.csv"
    queue = Queue.new

    queue << contents
    assert_instance_of File, contents

  end

  def test_it_has_a_queue
    er = EventReporter.new

    assert_instance_of Queue. er.queue
  end
end
