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

rich = User.new(
  name: "Rich",
  email: "rich_test@gmail.com",
  bio: "looking fantastic",
  age: 18,
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
rich.save!
picture = Picture.new(
  user: rich,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533354/Rich_rohsxa.jpg")
picture.save!

toni = User.new(
  name: "Toni Kenobi",
  email: "toni_test@gmail.com",
  bio: "Here for a good time, not a long time!",
  age: 28,
  gender: "Female",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
toni.save!
picture = Picture.new(
  user: toni,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533010/toni_fhrwle.jpg")
picture.save!

lu = User.new(
  name: "Lu Zhu",
  email: "lu_test@gmail.com",
  bio: "Rock'n Roll!",
  age: 25,
  gender: "Female",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
lu.save!
picture = Picture.new(
  user: lu,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533784/luzhu_gko9ay.jpg")
picture.save!

luis = User.new(
  name: "Luis",
  email: "luis_test@gmail.com",
  bio: "young and wild ;)",
  age: 19,
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
luis.save!
picture = Picture.new(
  user: luis,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533010/luis_2_fy316u.jpg")
picture.save!

andy = User.new(
  name: "Andy",
  email: "andy_test@gmail.com",
  bio: "1984",
  age: 34,
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
andy.save!
picture = Picture.new(
  user: andy,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533010/Andy_czwgx4.jpg")
picture.save!

dimitri = User.new(
  name: "Dimitri",
  email: "dimitri_test@gmail.com",
  bio: "Viva la France!",
  age: 32,
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
dimitri.save!
picture = Picture.new(
  user: dimitri,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533011/Dimitri_btefya.png")
picture.save!

nim = User.new(
  name: "Nim",
  email: "nim_test@gmail.com",
  bio: "Work hard, party hard!",
  age: 24,
  gender: "Female",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
nim.save!
picture = Picture.new(
  user: nim,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533010/nim_wcfdy0.jpg")
picture.save!

leon = User.new(
  name: "Leon",
  email: "leon_test@gmail.com",
  bio: "No Questions?",
  age: 24,
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
leon.save!
picture = Picture.new(
  user: leon,
  url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533010/Leon_freee7.jpg")
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
  primary_color: "#232323",
  secondary_color: "#F0037E",
  token: "7f727fe0c4cd86a1402d"
  )
fusion.save!

puts "Creating fake events"
lewagon_demo_day = Event.new(
  name: "Demo Day",
  background_image: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563535490/background_ivnvrf.jpg",
  start_date: "26/06/2019",
  end_date: "27/06/2019",
  logo: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563534407/logo_lewagon_ber9fg.png",
  welcome_message: "Welcome to Le Wagon Demo Day! Use this app to connect with other participants ahead of the event.",
  user: organizer,
  primary_color: "#866B6B",
  secondary_color: "#FF0000",
  token: "bcd80dd95c14c6a985b3"
  )
lewagon_demo_day.save!

puts 'creating new participants, all going to fusion'

annap = Participant.new(
  user: anna,
  event: lewagon_demo_day
  )
  annap.save!
mariap = Participant.new(
  user: maria,
  event: lewagon_demo_day
  )
  mariap.save!
franp = Participant.new(
  user: fran,
  event: lewagon_demo_day
  )
  franp.save!

ninap = Participant.new(
  user: nina,
  event: lewagon_demo_day
  )
  ninap.save!

leilap = Participant.new(
  user: leila,
  event: lewagon_demo_day
  )
 leilap.save!

sabrinap = Participant.new(
  user: sabrina,
  event: lewagon_demo_day
  )
  sabrina.save!

alexp = Participant.new(
  user: alex,
  event: lewagon_demo_day
  )
  alex.save!

hannahp = Participant.new(
  user: hannah,
  event: lewagon_demo_day
  )
  hannah.save!


timp = Participant.new(
  user: tim,
  event: lewagon_demo_day
  )
timp.save!

danp = Participant.new(
  user: dan,
  event: lewagon_demo_day
  )
danp.save!

mikep = Participant.new(
  user: mike,
  event: lewagon_demo_day
  )
mikep.save!

markp = Participant.new(
  user: mark,
  event: lewagon_demo_day
  )
markp.save!

philp = Participant.new(
  user: dan,
  event: lewagon_demo_day
  )
philp.save!

tomp = Participant.new(
  user: tom,
  event: lewagon_demo_day
  )
tomp.save!

sammyp = Participant.new(
  user: sammy,
  event: lewagon_demo_day
  )
sammyp.save!

andyp = Participant.new(
  user: andy,
  event: lewagon_demo_day
  )
andyp.save!

dimitrip = Participant.new(
  user: dimitri,
  event: lewagon_demo_day
  )
dimitrip.save!

nimp = Participant.new(
  user: nim,
  event: lewagon_demo_day
  )
nimp.save!

leonp = Participant.new(
  user: leon,
  event: lewagon_demo_day
  )
leonp.save!

tonip = Participant.new(
  user: toni,
  event: lewagon_demo_day
  )
tonip.save!

richp = Participant.new(
  user: rich,
  event: lewagon_demo_day
  )
richp.save!

luisp = Participant.new(
  user: luis,
  event: lewagon_demo_day
  )
luisp.save!

lup = Participant.new(
  user: lu,
  event: lewagon_demo_day
  )
lup.save!

puts "create a swipe for lu"

s1 = Swipe.new(
  participant_1: lup,
  participant_2: nimp,
  participant_1_liked: true,
  participant_2_liked: true
  )
s1.save!

s2 = Swipe.new(
  participant_1: lup,
  participant_2: mariap,
  participant_1_liked: true,
  participant_2_liked: true
  )
s2.save!


s3 = Swipe.new(
  participant_1: lup,
  participant_2: markp,
  participant_1_liked: true,
  participant_2_liked: true
  )
s3.save!



 puts "a match for lu"
m1 = Match.new(swipe: s1)
m1.save!
m2 = Match.new(swipe: s2)
m2.save!
m3 = Match.new(swipe: s3)
m3.save!



puts 'Finished!'

