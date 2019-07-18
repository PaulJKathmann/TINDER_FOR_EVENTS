# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Message.destroy_all
Match.destroy_all
Swipe.destroy_all
Participant.destroy_all
Event.destroy_all
Picture.destroy_all
User.destroy_all



puts 'Creating fake users'
maria = User.new(
  name: "Maria",
  email: "maria_test@gmail.com",

  bio: "Single and ready to mingle",
  age: rand(21...30),
  gender: "Female",
  preferred_gender: "Both",
  preferred_match_type: "Date",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )

maria.save!
picture = Picture.new(
  user: maria,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292928/n3gga63cnhde7ztwdbwd.jpg")
picture.save!

anna = User.new(
  name: "Anna",
  email: "Anna_test@gmail.com",
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

anna.save!
picture = Picture.new(
  user: anna,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292971/oapfaj830rdqcgfsc7vz.jpg")
picture.save!

fran = User.new(
  name: "Fran",
  email: "Fran_test@gmail.com",
  bio: " I like pancakes",

  age: rand(21...30),
  gender: "Female",
  preferred_gender: "Male",
  preferred_match_type: "Date",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )

fran.save!
picture = Picture.new(
  user: fran,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292982/lrostbfruf0i4bcmgukk.jpg" )
picture.save!

nina = User.new(
  name: "Nina",
  email: "nina_test@gmail.com",
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

nina.save!
picture = Picture.new(
  user: nina,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292993/lpet7w6dyag73uge6ytx.jpg")
picture.save!

leila = User.new(
  name: "Leila",
  email: "leila_test@gmail.com",
  bio: "Spelling is important",
  age: rand(21...30),
  gender: "Female",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
leila.save!
picture = Picture.new(
  user: leila,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457254/female8_rmcgfw.jpg")
picture.save!

sabrina = User.new(
  name: "Sabrina",
  email: "sabrina_test@gmail.com",
  bio: "When I grow up I will buy a huge bus and live in the mountains",
  age: rand(21...30),
  gender: "Female",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
sabrina.save!
picture = Picture.new(
  user: sabrina,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457253/female6_pj2md0.jpg")
picture.save!

alex = User.new(
  name: "Alex",
  email: "alex_test@gmail.com",
  bio: "I love to party, looking for someone to have a nice time",
  age: rand(21...30),
  gender: "Female",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
alex.save!
picture = Picture.new(
  user: alex,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457252/female5_aiumri.jpg")
picture.save!

hannah = User.new(
  name: "Hannah",
  email: "hannah_test@gmail.com",
  bio: "this yellow shirt is very cool huh?",
  age: rand(21...30),
  gender: "Female",
  preferred_gender: "Male",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
hannah.save!
picture = Picture.new(
  user: hannah,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457252/female5_aiumri.jpg")
picture.save!



tim = User.new(
  name: "Tim",
  email: "tim_test@gmail.com",
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
tim.save!
picture = Picture.new(
  user: tim,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563293046/bmmbpppr1rvzhqgnzm2y.jpg")
picture.save!

dan = User.new(
  name: "Dan",
  email: "dan_test@gmail.com",
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
dan.save!
picture = Picture.new(
  user: dan,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563293147/gyewfrru71bitkotolnj.jpg")
picture.save!

mike = User.new(
  name: "Mike",
  email: "mike_test@gmail.com",
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
mike.save!
picture = Picture.new(
  user: mike,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563293194/ig0umhoruyqginakyksa.jpg")
picture.save!

mark = User.new(
  name: "Mark",
  email: "mark_test@gmail.com",
  bio: "ready party!!",
  age: rand(21...30),
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
mark.save!
picture = Picture.new(
  user: mark,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457374/male2_jas2sj.jpg")
picture.save!

phil = User.new(
  name: "Phil",
  email: "phil_test@gmail.com",
  bio: "i dont care bout Spelling",
  age: rand(21...30),
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
phil.save!
picture = Picture.new(
  user: phil,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457374/male3_rrpw5g.jpg")
picture.save!

 tom = User.new(
  name: "Tom",
  email: "tom_test@gmail.com",
  bio: "i dont care bout Spelling",
  age: rand(21...30),
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
tom.save!
picture = Picture.new(
  user: tom,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457373/male1_k5zozb.jpg")
picture.save!

sammy = User.new(
  name: "Sammy",
  email: "sammy_test@gmail.com",
  bio: "i love frozen yogurt",
  age: rand(21...30),
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
sammy.save!
picture = Picture.new(
  user: sammy,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457373/male4_ko0ubo.jpg")
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
fusion = Event.new(
  name: "Fusion",
  background_image: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563359484/Fusion-Festival-2017_xfzslw.jpg",
  start_date: "26/06/2019",
  end_date: "30/06/2019",
  logo: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563362331/fusion_logo2019_spskle.png",
  welcome_message: "Welcome to Fusion! We encourage you to connect with many new people, create new friendships and get out of your comfort zone",
  user: organizer,
  primary_color: "232323",
  secondary_color: "F0037E"

  )
fusion.save!

puts 'creating new participants, all going to fusion'

annap = Participant.new(
  user: anna,
  event: fusion
  )
  annap.save!
mariap = Participant.new(
  user: maria,
  event: fusion
  )
  mariap.save!
franp = Participant.new(
  user: fran,
  event: fusion
  )
  franp.save!

ninap = Participant.new(
  user: nina,
  event: fusion
  )
  ninap.save!

leilap = Participant.new(
  user: leila,
  event: fusion
  )
 leilap.save!

sabrinap = Participant.new(
  user: sabrina,
  event: fusion
  )
  sabrina.save!

alexp = Participant.new(
  user: alex,
  event: fusion
  )
  alex.save!

hannahp = Participant.new(
  user: hannah,
  event: fusion
  )
  hannah.save!


timp = Participant.new(
  user: tim,
  event: fusion
  )
timp.save!

danp = Participant.new(
  user: dan,
  event: fusion
  )
danp.save!

mikep = Participant.new(
  user: mike,
  event: fusion
  )
mikep.save!

markp = Participant.new(
  user: mark,
  event: fusion
  )
markp.save!

philp = Participant.new(
  user: dan,
  event: fusion
  )
philp.save!

tomp = Participant.new(
  user: tom,
  event: fusion
  )
tomp.save!

sammyp = Participant.new(
  user: sammy,
  event: fusion
  )
sammyp.save!

puts "create a swipe for maria id 1"

s1 = Swipe.new(
  participant_1: mariap,
  participant_2: timp
  )
s1.save!

s2 = Swipe.new(
  participant_1: mariap,
  participant_2: sammyp
  )
s2.save!


s3 = Swipe.new(
  participant_1: mariap,
  participant_2: markp
  )
s3.save!



 puts "a match for maria"
m = Match.new(
  swipe: s1

  )
m = Match.new(
  swipe: s2

  )
m = Match.new(
  swipe: s3

  )



puts 'Finished!'

