# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Match.delete_all
Reject.delete_all

name = Faker::Name.first_name
email = Faker::Internet.email
bio_quote = Faker::Quote.famous_last_words
age = Faker::Number.between(from: 18, to: 70)
gender = Faker::Gender.binary_type
img_url = Faker::LoremFlickr.image(size: "300x300", search_terms: ["#{gender}"])

u1 = User.create(name: name, email: email, bio: bio_quote, gender: gender, age: age, img_url: img_url)
u2 = User.create(name: name, email: email, bio: bio_quote, gender: gender, age: age, img_url: img_url)
u3 = User.create(name: name, email: email, bio: bio_quote, gender: gender, age: age, img_url: img_url)
u4 = User.create(name: name, email: email, bio: bio_quote, gender: gender, age: age, img_url: img_url)
u5 = User.create(name: name, email: email, bio: bio_quote, gender: gender, age: age, img_url: img_url)
u6 = User.create(name: name, email: email, bio: bio_quote, gender: gender, age: age, img_url: img_url)
u7 = User.create(name: name, email: email, bio: bio_quote, gender: gender, age: age, img_url: img_url)
u8 = User.create(name: name, email: email, bio: bio_quote, gender: gender, age: age, img_url: img_url)
u9 = User.create(name: name, email: email, bio: bio_quote, gender: gender, age: age, img_url: img_url)


m1
