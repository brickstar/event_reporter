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
    fl = FileLoader.new('./data/event_attendees.csv')
    fl.load_file('./data/event_attendees.csv')

    assert_nil fl.load_file('./data/event_attendees.csv')
  end

  
end
