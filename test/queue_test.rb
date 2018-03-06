require './lib/queue'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'


class QueueTest < Minitest::Test

  def test_it_exists
    q = Q.new

    assert_instance_of Q, q
  end

  def test_it_starts_with_empty_array
    q = Q.new

    assert_equal [], q.queue
  end

  
end
