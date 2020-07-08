# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Match.delete_all
Reject.delete_all
User.delete_all


name = Faker::Name.first_name
email = Faker::Internet.email
bio_quote = Faker::Quote.famous_last_words
age = Faker::Number.between(from: 18, to: 70)
gender = Faker::Gender.binary_type
img_url = Faker::LoremFlickr.image(size: "300x300", search_terms: ["#{gender}"])

15.times{ User.create(name: Faker::Name.first_name, email: Faker::Internet.email, bio: Faker::Quote.famous_last_words, gender: Faker::Gender.binary_type, age: Faker::Number.between(from: 18, to: 70), img_url: Faker::LoremFlickr.image(size: "300x300", search_terms: ["#{Faker::Gender.binary_type}"])) }

5.times { Match.create(user: User.all.sample, user_two: User.all.sample)}

5.times { Reject.create(user: User.all.sample, user_two: User.all.sample)}