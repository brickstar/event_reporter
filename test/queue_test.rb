require './lib/queue'
require './lib/attendee'
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

  def test_it_can_add_to_the_queue
    q = Q.new

    amanda = Attendee.new({ id: '19',
                            regdate: '11/23/08 20:44',
                            first_name: 'Amanda',
                            last_name: 'Hartzell',
                            email_address: 'nqm17@jumpstartlab.com',
                            homephone: '607-280-2000',
                            street: '3515 School St',
                            city: 'Valois',
                            state: 'NY',
                            zipcode: '14841' })
    q.add(amanda)

    assert_equal 1, q.queue.length
  end

  def test_it_can_count
    q = Q.new
    amanda = Attendee.new({ id: '19',
                            regdate: '11/23/08 20:44',
                            first_name: 'Amanda',
                            last_name: 'Hartzell',
                            email_address: 'nqm17@jumpstartlab.com',
                            homephone: '607-280-2000',
                            street: '3515 School St',
                            city: 'Valois',
                            state: 'NY',
                            zipcode: '14841' })

      q.add(amanda)

      assert_equal 1, q.queue.length
    end

  def test_it_can_clear_queue
    q = Q.new
    amanda = Attendee.new({ id: '19',
                            regdate: '11/23/08 20:44',
                            first_name: 'Amanda',
                            last_name: 'Hartzell',
                            email_address: 'nqm17@jumpstartlab.com',
                            homephone: '607-280-2000',
                            street: '3515 School St',
                            city: 'Valois',
                            state: 'NY',
                            zipcode: '14841' })
    q.add(amanda)

    assert_equal 1, q.queue.length

    q.clear

    assert_equal 0, q.queue.length
  end

  def test_print_headers

  end
  def test_print_stuff
    q = Q.new
    amanda = Attendee.new({ id: '19',
                            regdate: '11/23/08 20:44',
                            first_name: 'Amanda',
                            last_name: 'Hartzell',
                            email_address: 'nqm17@jumpstartlab.com',
                            homephone: '607-280-2000',
                            street: '3515 School St',
                            city: 'Valois',
                            state: 'NY',
                            zipcode: '14841' })

    dingleberry = Attendee.new({ id: '20',
                             regdate: '12/24/09 21:44',
                             first_name: 'Dingle',
                             last_name: 'Berry',
                             email_address: 'dingle@dingle.com',
                             homephone: '555-867-5309',
                             street: '321 Bebop St',
                             city: 'Denver',
                             state: 'CO',
                             zipcode: '80218' })
    q.add(amanda)
    q.add(dingleberry)
binding.pry
  end
end
