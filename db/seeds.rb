require 'open-uri'
require 'active_record'

50.times do
  country = FFaker::Address.country
  user = User.create!(
    email: FFaker::Internet.email,
    country: country,
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    addresses: [Address.create!(
	  house_no: FFaker::Address.secondary_address,
	  street_name: FFaker::Address.street_address,
	  city: FFaker::Address.city, 
      country: country,
	  pin_code: 1 + rand(99999)
	)]
  ) 
end 
