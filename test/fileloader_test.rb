require './lib/fileloader'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class FileLoaderTest < Minitest::Test

  def test_it_exists
    fl = FileLoader.new('./data/event_attendees.csv')

    assert_instance_of FileLoader, fl
  end

  def test_it_can_load_file
    fl = FileLoader.new('./data/ \event_attendees.csv')
    attendees = fl.load_file('./data/event_attendees.csv')

    assert_instance_of Array, fl.load_file('./data/event_attendees.csv')
    assert_equal "Washington", attendees[0].city
    assert_equal "14018685000", attendees[10].homephone
    assert_equal "NY", attendees[-1].state
  end

end
