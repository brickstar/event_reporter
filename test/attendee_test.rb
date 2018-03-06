require './lib/attendee'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class AttendeeTest < Minitest::Test

  def setup

    @amanda = Attendee.new({ id: '19',
                             regdate: '11/23/08 20:44',
                             first_name: 'Amanda',
                             last_name: 'Hartzell',
                             email_address: 'nqm17@jumpstartlab.com',
                             home_phone: '607-280-2000',
                             street: '3515 School St',
                             city: 'Valois',
                             state: 'NY',
                             zipcode: '14841' })
  end

  def test_it_exists
    assert_instance_of Attendee, @amanda
  end

  def test_id
    assert_equal '19', @amanda.id
  end

  def test_registration_date
    assert_equal '11/23/08 20:44', @amanda.regdate
  end

  def test_first_name
    assert_equal 'Amanda', @amanda.first_name
  end

  def test_last_name
    assert_equal 'Hartzell', @amanda.last_name
  end

  def test_email_address
    assert_equal 'nqm17@jumpstartlab.com', @amanda.email_address
  end

  def test_home_phone
    assert_equal '607-280-2000', @amanda.home_phone
  end

  def test_street
    assert_equal '3515 School St', @amanda.street
  end

  def test_city
    assert_equal 'Valois', @amanda.city
  end

  def test_state
    assert_equal 'NY', @amanda.state
  end

  def test_zipcode
    assert_equal '14841', @amanda.zipcode
  end

end
