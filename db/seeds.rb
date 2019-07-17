# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating fake users'
user = User.new(
  name: Faker::Name.female_first_name,
  email: "test#{rand(1...100)}@gmail.com",
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
user.save!
picture = Picture.new(
  user: user,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292928/n3gga63cnhde7ztwdbwd.jpg")
picture.save!

user = User.new(
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
user.save!
picture = Picture.new(
  user: user,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292971/oapfaj830rdqcgfsc7vz.jpg")
picture.save!

user = User.new(
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
user.save!
picture = Picture.new(
  user: user,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292982/lrostbfruf0i4bcmgukk.jpg")
picture.save!

user = User.new(
  name: Faker::Name.female_first_name,
  email: "test#{rand(1...100)}@gmail.com",
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
user.save!
picture = Picture.new(
  user: user,
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

puts "Create Organisor"

organizer = User.new(
  name: "Paul",
  email: "paul.kathmann.98@gmail.com",
  bio: "Organising Fusion 2019",
  age: 21,
  gender: "Male",
  preferred_gender: "Female",
  preferred_match_type: "Friends",
  role: "organizer",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
organizer.save!

puts "Creating fake events"
event = Event.new(
  name: "Fusion",
  background_image: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563359484/Fusion-Festival-2017_xfzslw.jpg",
  start_date: "26/06/2019",
  end_date: "30/06/2019",
  logo: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563362331/fusion_logo2019_spskle.png",
  welcome_message: "Welcome to Fusion! We encourage you to connect with many new people, create new friendships and get out of your comfort zone",
  user: organizer
  )
event.save!

puts 'Finished!'
