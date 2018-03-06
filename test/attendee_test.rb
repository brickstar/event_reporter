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

  def test_it_has_attributes
    assert_equal '19', @amanda.id
    assert_equal '11/23/08 20:44', @amanda.regdate
  end

end
