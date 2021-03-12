# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
40.times do

	Student.create(
		first_name: Faker::Name.first_name, 
		middle_name: Faker::Name.middle_name, 
		last_name: Faker::Name.last_name,
		email: Faker::Internet.email,
		gender: Faker::Gender.binary_type,
		date_of_birth: Faker::Date.birthday,
		contact_no: Faker::PhoneNumber.cell_phone,
		date_of_joining: Faker::Date.in_date_period(month: 2),
		address: Faker::Address.street_name,
		address2: Faker::Address.street_address,
		city: Faker::Address.city,
		state: Faker::Address.state,
		pincode: Faker::Address.zip_code
  )

end
