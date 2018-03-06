class Attendee
  attr_reader :id,
              :regdate,
              :first_name,
              :last_name,
              :home_phone,
              :street,
              :city,
              :state,
              :zipcode

  def initialize(data)
    @id = data[:id]
    @regdate = data[:regdate]
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @email_address = data[:email_address]
    @home_phone = data[:home_phone]
    @street = data[:street]
    @city = data[:city]
    @state = data[:state]
    @zipcode = data[:zipcode]

  end
end
