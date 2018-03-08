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

  def test_count
    q = Q.new

    assert_equal 0, q.queue.length

    q = Q.new
    heidi = Attendee.new({ id: '19',
                          regdate: '11/23/08 20:44',
                          first_name: 'Heidi',
                          last_name: 'Johnson',
                          email_address: 'hdj@gmail.com',
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

    larry = Attendee.new({ id: '454',
                          regdate: '12/24/09 21:44',
                          first_name: 'Larry',
                          last_name: 'Jinglebum',
                          email_address: 'larry@vjvjvjvvjzk.com',
                          homephone: '555-444-4444',
                          street: '321 Bop St',
                          city: 'Idunno',
                          state: 'ID',
                          zipcode: '44418' })

    q.add(heidi)
    q.add(dingleberry)
    q.add(larry)

    assert_equal 3, q.count
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

  def test_headers
    q = Q.new

    assert_equal ["LAST NAME", "FIRST NAME", "EMAIL", "ZIPCODE", "CITY", "STATE", "ADDRESS", "PHONE", "DISTRICT"], q.headers
  end

  def test_find_max_characters
    q = Q.new
    heidi = Attendee.new({ id: '19',
                          regdate: '11/23/08 20:44',
                          first_name: 'Heidi',
                          last_name: 'Johnson',
                          email_address: 'hdj@gmail.com',
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

    larry = Attendee.new({ id: '454',
                          regdate: '12/24/09 21:44',
                          first_name: 'Larry',
                          last_name: 'Jinglebum',
                          email_address: 'larry@vjvjvjvvjzk.com',
                          homephone: '555-444-4444',
                          street: '321 Bop St',
                          city: 'Idunno',
                          state: 'ID',
                          zipcode: '44418' })

    q.add(heidi)
    q.add(dingleberry)
    q.add(larry)

    assert_equal 21, q.find_max_characters

    big_larry = Attendee.new({ id: '454',
                          regdate: '12/24/09 21:44',
                          first_name: 'Larry',
                          last_name: 'Jinglebum',
                          email_address: 'larry@vjvjffffffvjvvjzk.com',
                          homephone: '555-444-4444',
                          street: '321 Bop St',
                          city: 'Idunno',
                          state: 'ID',
                          zipcode: '44418' })

    q.add(big_larry)

    assert_equal 27, q.find_max_characters
  end

  def test_print_stuff
    q = Q.new
    heidi = Attendee.new({ id: '19',
                          regdate: '11/23/08 20:44',
                          first_name: 'Heidi',
                          last_name: 'Johnson',
                          email_address: 'hdj@gmail.com',
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

    larry = Attendee.new({ id: '454',
                          regdate: '12/24/09 21:44',
                          first_name: 'Larry',
                          last_name: 'Jinglebum',
                          email_address: 'larry@vjvjvjvvjzk.com',
                          homephone: '555-444-4444',
                          street: '321 Bop St',
                          city: 'Idunno',
                          state: 'ID',
                          zipcode: '44418' })

    q.add(heidi)
    q.add(dingleberry)
    q.add(larry)

    assert_equal [["Johnson", "Heidi", "hdj@gmail.com", "14841", "Valois", "NY", "3515 School St", "607-280-2000", "DISTRICT"], ["Berry", "Dingle", "dingle@dingle.com", "80218", "Denver", "CO", "321 Bebop St", "555-867-5309", "DISTRICT"], ["Jinglebum", "Larry", "larry@vjvjvjvvjzk.com", "44418", "Idunno", "ID", "321 Bop St", "555-444-4444", "DISTRICT"]], q.print_stuff
   end
end
