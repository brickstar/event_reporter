require './lib/queue'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'


class QTest < Minitest::Test

  def test_it_exists
    q = Q.new

    assert_instance_of Q, q
  end

  def test_it_starts_with_empty_array
    q = Q.new

    assert_equal [], q.queue
  end

  def test_count_starts_at_0
    q = Q.new

    assert_equal 0, q.queue.length
  end

  def test_it_can_clear_queue
    q = Q.new
    q.queue.push [55]

    assert_equal 1, q.queue.length

    q.clear

    assert_equal 0, q.queue.length
  end
end
