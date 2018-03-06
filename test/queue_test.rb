require './lib/queue'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'


class QueueTest < Minitest::Test

  def test_it_exists
    q = Queue.new

    assert_instance_of Queue, q
  end

  def test_it_starts_with_empty_array
    q = Queue.new

    assert_equal [], q.queue
  end
end
