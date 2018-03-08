require './lib/data_cleaner'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class DataCleanerTest < Minitest::Test

  def test_it_exists
    dc = DataCleaner.new
    
    assert_instance_of DataCleaner, dc
  end
end
