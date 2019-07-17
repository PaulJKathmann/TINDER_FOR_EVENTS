# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "clean db"
Picture.destroy_all
Participant.destroy_all
Event.destroy_all
User.destroy_all

puts 'Creating fake user'
event_organizer = User.new(
  name: Faker::Name.female_first_name,
  email: "organizer@go-vesta.com",
  bio: "Single and ready to mingle",
  age: rand(21...30),
  gender: "Female",
  preferred_gender: "Male",
  preferred_match_type: "Date",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
event_organizer.save!
picture = Picture.new(
  user: event_organizer,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292928/n3gga63cnhde7ztwdbwd.jpg")
picture.save!

lisa = User.new(
  name: Faker::Name.female_first_name,
  email: "test#{rand(1...100)}@gmail.com",
  bio: "Let's dance all night!",
  age: rand(21...30),
  gender: "Female",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
lisa.save!
picture = Picture.new(
  user: lisa,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292971/oapfaj830rdqcgfsc7vz.jpg")
picture.save!

anna = User.new(
  name: Faker::Name.female_first_name,
  email: "test#{rand(1...100)}@gmail.com",
  bio: " ",
  age: rand(21...30),
  gender: "Female",
  preferred_gender: "Male",
  preferred_match_type: "Date",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
anna.save!
picture = Picture.new(
  user: anna,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292982/lrostbfruf0i4bcmgukk.jpg")
picture.save!

manfred = User.new(
  name: Faker::Name.female_first_name,
  email: "manfred@gmail.com",
  bio: "Techno is Lifeeee",
  age: rand(21...30),
  gender: "Female",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
manfred.save!
picture = Picture.new(
  user: manfred,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292993/lpet7w6dyag73uge6ytx.jpg")
picture.save!

user = User.new(
  name: Faker::Name.male_first_name,
  email: "test#{rand(1...100)}@gmail.com",
  bio: "New in town..looking to make new friends",
  age: rand(21...30),
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
user.save!
picture = Picture.new(
  user: user,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563293046/bmmbpppr1rvzhqgnzm2y.jpg")
picture.save!

user = User.new(
  name: Faker::Name.male_first_name,
  email: "test#{rand(1...100)}@gmail.com",
  bio: "Ready to rave",
  age: rand(21...30),
  gender: "Male",
  preferred_gender: "Female",
  preferred_match_type: "Date",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
user.save!
picture = Picture.new(
  user: user,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563293147/gyewfrru71bitkotolnj.jpg")
picture.save!

user = User.new(
  name: Faker::Name.male_first_name,
  email: "test#{rand(1...100)}@gmail.com",
  bio: "New in town..looking to make new friends",
  age: rand(21...30),
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Date",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
user.save!
picture = Picture.new(
  user: user,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563293194/ig0umhoruyqginakyksa.jpg")
picture.save!

puts "create event"
festival = Event.create!(
    name: "festival",
    user: event_organizer,
    primary_color: "black"
  )

puts "create participants"
Participant.create!(
event: festival,
user: lisa
)
Participant.create!(
  event: festival,
  user: anna
  )
Participant.create!(
  event: festival,
  user: manfred
  )

puts 'Finished!'

