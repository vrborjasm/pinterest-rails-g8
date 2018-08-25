# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pin.delete_all
User.delete_all

10.times  do |i|
	Pin.create(
		name: "Pin #{i+1}",
		photo: 'http://placeimg.com/640/480/any',
		description: "Random #{i+1}",
		user_id: 0
		)
	
end

puts "Pins created"