# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do

	User.create(
		fname: Faker::Name.first_name,
		lname: Faker::Name.last_name,
		address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
		email: Faker::Internet.email,
		password: "password"
	)
end

(1..20).each do |num|
	Wishlist.create(
		user_id: num,
		name: "My Wishlist"
	)
end

(1..20).each do |num|
	Order.create(
		user_id: num
	)
end


15.times do

	Product.create(
		name: "#{Faker::Space.unique.star} Poster",
		price: Faker::Number.decimal(2, 2),
		number_avail: Faker::Number.number(3)

	)

end