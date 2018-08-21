# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pin.delete_all


8.times do |i|

	photo = Faker::Avatar.image
	a = Pin.new(
		name: "Pin #{i+1}",
		description: "Random #{i+1}",
		photo: photo)
	a.save
end

puts "Pins created"