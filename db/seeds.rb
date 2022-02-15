# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do |i|
  User.create(name: "test_user#{i}", email: "test#{i}@test.com", password: 'testpass')
end

5.times do |i|
  Event.create(name: "Test Event ##{i}", event_date: Date.new, max_guests: rand(50))
end
