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
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292928/n3gga63cnhde7ztwdbwd.jpg")
picture.save!

# anna = User.new(
#   name: "Anna",
#   email: "Anna_test@gmail.com",
#   bio: "Let's dance all night!",
#   age: rand(21...30),
#   gender: "Female",
#   preferred_gender: "Both",
#   preferred_match_type: "Friends",
#   role: "user",
#   lower_age_preference: 18,
#   upper_age_preference: 40,
#   password: "password"
#   )

# anna.save!
# picture = Picture.new(
#   user: anna,
#   remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292971/oapfaj830rdqcgfsc7vz.jpg")
# picture.save!

fran = User.new(
  name: "Fran",
  email: "Fran_test@gmail.com",
  bio: " I like pancakes! I'm a really cool girl that likes to party. maybe I'm not cool for you. Who Knows? Lets meet at the party and have a drink.",
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
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292982/lrostbfruf0i4bcmgukk.jpg" )
picture.save!

fran.save!
picture = Picture.new(
  user: fran,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564055732/marion-michele-Ki0tCxh7GRk-unsplash_yhph2z.jpg" )
picture.save!

picture = Picture.new(
  user: fran,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564055733/camille-kmile-iNM9QoklAts-unsplash_f3gajq.jpg" )
picture.save!

# nina = User.new(
#   name: "Nina",
#   email: "nina_test@gmail.com",
#   bio: "Techno is Lifeeee",
#   age: rand(21...30),
#   gender: "Female",
#   preferred_gender: "Both",
#   preferred_match_type: "Friends",
#   role: "user",
#   lower_age_preference: 18,
#   upper_age_preference: 40,
#   password: "password"
#   )

# nina.save!
# picture = Picture.new(
#   user: nina,
#   remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563292993/lpet7w6dyag73uge6ytx.jpg")
# picture.save!

leila = User.new(
  name: "Leila",
  email: "leila_test@gmail.com",
  bio: "Spelling is important. I'm always down for a beer, reggueton-ton-ton, or meeting friends. Tell me joke that cracks me and you will win my heart!",
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
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457254/female8_rmcgfw.jpg")
picture.save!
leila.save!
picture = Picture.new(
  user: leila,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564055736/baylee-gramling-ui00DmD1KAU-unsplash_bxfftu.jpg")
picture.save!
leila.save!
picture = Picture.new(
  user: leila,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564055736/sandra-seitamaa-0nM3mFNuAaI-unsplash_lleayk.jpg")
picture.save!
leila.save!
picture = Picture.new(
  user: leila,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564055736/alexander-mils-Q9YdEzqwfDE-unsplash_jizugm.jpg")
picture.save!
leila.save!
picture = Picture.new(
  user: leila,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564055739/abigail-keenan-99C5lrAyxpQ-unsplash_a0lyx4.jpg")
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
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457253/female6_pj2md0.jpg")
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
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457252/female5_aiumri.jpg")
picture.save!

hannah = User.new(
  name: "Hannah",
  email: "hannah_test@gmail.com",
  bio: "this yellow shirt is very cool huh? oh wait! I'm not even wearing a yellow shirt! who wants to listen to tecno with me! my friends are bullshit an they just want to dance near the reggueton stage",
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
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457252/female5_aiumri.jpg")
picture.save!

hannah.save!
picture = Picture.new(
  user: hannah,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564055735/thibault-debaene-pZTVa_Gt1f8-unsplash_hgannw.jpg")
picture.save!
hannah.save!
picture = Picture.new(
  user: hannah,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564055733/gesina-kunkel-ISmHh0Ip1BA-unsplash_mh7zjk.jpg")
picture.save!


tim = User.new(
  name: "Tim",
  email: "tim_test@gmail.com",
  bio: "I'm pretty awesome, but you probably don't belive me... read my reviews.
  'Groundbreaking' - NY Times, 'Man of the year' - Men's Health  '5 Stars'- Random Uber Driver",
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
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563293046/bmmbpppr1rvzhqgnzm2y.jpg")
picture.save!
tim.save!
picture = Picture.new(
  user: tim,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564056903/ehimetalor-unuabona-SG21zQPSayU-unsplash_kftfqm.jpg")
picture.save!
tim.save!
picture = Picture.new(
  user: tim,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564056907/patrick-pierre-LRoleO6DmQ8-unsplash_h0uolo.jpg")
picture.save!

dan = User.new(
  name: "Dan",
  email: "dan_test@gmail.com",
  bio: "Hi i'm Dan! by day I'm an entrepreneur/developer/magician by night I'm a Grammar Professor at the uni. Just kidding XD. I'm Batman!  ",
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
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563293147/gyewfrru71bitkotolnj.jpg")
picture.save!
picture = Picture.new(
  user: dan,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564055733/sandis-helvigs-hfZYhPNK1Oc-unsplash_qdimq0.jpg")
picture.save!
picture = Picture.new(
  user: dan,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564055733/kimberly-mears-_ar-3Puhomo-unsplash_vbcgxu.jpg")
picture.save!


paul = User.new(
  name: "Paul",
  email: "paul_test@gmail.com",
  bio: "New in town..looking to pre-drink on Saturday",
  age: rand(21...30),
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Date",
  role: "user",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
paul.save!
picture = Picture.new(
  user: paul,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563447177/myphoto_fxdkfl.jpg")
picture.save!

# mark = User.new(
#   name: "Mark",
#   email: "mark_test@gmail.com",
#   bio: "ready party!!",
#   age: rand(21...30),
#   gender: "Male",
#   preferred_gender: "Both",
#   preferred_match_type: "Friends",
#   role: "user",
#   lower_age_preference: 18,
#   upper_age_preference: 40,
#   password: "password"
#   )
# mark.save!
# picture = Picture.new(
#   user: mark,
#   remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457374/male2_jas2sj.jpg")
# picture.save!

# phil = User.new(
#   name: "Phil",
#   email: "phil_test@gmail.com",
#   bio: "i dont care bout Spelling",
#   age: rand(21...30),
#   gender: "Male",
#   preferred_gender: "Both",
#   preferred_match_type: "Friends",
#   role: "user",
#   lower_age_preference: 18,
#   upper_age_preference: 40,
#   password: "password"
#   )
# phil.save!
# picture = Picture.new(
#   user: phil,
#   remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457374/male3_rrpw5g.jpg")
# picture.save!

 tom = User.new(
  name: "Tom",
  email: "tom_test@gmail.com",
  bio: "i dont care bout Spelling but i care about love festivals and animals. I also dont care about gender, im here to finde cool people to hang out and have an awesome festival",
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
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457373/male1_k5zozb.jpg")
picture.save!

picture = Picture.new(
  user: tom,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564055734/alex-shutin-_UmLYV_9gR0-unsplash_bzshqv.jpg")
picture.save!

sammy = User.new(
  name: "Sammy",
  email: "sammy_test@gmail.com",
  bio: "i love frozen yogurt, yoga and you. I'm also a very cheessy guy, but that's ok, I have a girlfriend (she made me write the yougurt line). match me if you are down for Saturday pre-drinking ",
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
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563457373/male4_ko0ubo.jpg")
picture.save!

# rich = User.new(
#   name: "Rich",
#   email: "rich_test@gmail.com",
#   bio: "looking fantastic",
#   age: 18,
#   gender: "Male",
#   preferred_gender: "Both",
#   preferred_match_type: "Friends",
#   role: "user",
#   lower_age_preference: 18,
#   upper_age_preference: 40,
#   password: "password"
#   )
# rich.save!
# picture = Picture.new(
#   user: rich,
#   remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533354/Rich_rohsxa.jpg")
# picture.save!

# toni = User.new(
#   name: "Toni Kenobi",
#   email: "toni_test@gmail.com",
#   bio: "Here for a good time, not a long time!",
#   age: 28,
#   gender: "Female",
#   preferred_gender: "Both",
#   preferred_match_type: "Friends",
#   role: "user",
#   lower_age_preference: 18,
#   upper_age_preference: 40,
#   password: "password"
#   )
# toni.save!
# picture = Picture.new(
#   user: toni,
#   remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533010/toni_fhrwle.jpg")
# picture.save!

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
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533784/luzhu_gko9ay.jpg")
picture.save!

# luis = User.new(
#   name: "Luis",
#   email: "luis_test@gmail.com",
#   bio: "young and wild ;)",
#   age: 19,
#   gender: "Male",
#   preferred_gender: "Both",
#   preferred_match_type: "Friends",
#   role: "user",
#   lower_age_preference: 18,
#   upper_age_preference: 40,
#   password: "password"
#   )
# luis.save!
# picture = Picture.new(
#   user: luis,
#   remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533010/luis_2_fy316u.jpg")
# picture.save!

# andy = User.new(
#   name: "Andy",
#   email: "andy_test@gmail.com",
#   bio: "1984",
#   age: 34,
#   gender: "Male",
#   preferred_gender: "Both",
#   preferred_match_type: "Friends",
#   role: "user",
#   lower_age_preference: 18,
#   upper_age_preference: 40,
#   password: "password"
#   )
# andy.save!
# picture = Picture.new(
#   user: andy,
#   remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533010/Andy_czwgx4.jpg")
# picture.save!

# dimitri = User.new(
#   name: "Dimitri",
#   email: "dimitri_test@gmail.com",
#   bio: "Viva la France!",
#   age: 32,
#   gender: "Male",
#   preferred_gender: "Both",
#   preferred_match_type: "Friends",
#   role: "user",
#   lower_age_preference: 18,
#   upper_age_preference: 40,
#   password: "password"
#   )
# dimitri.save!
# picture = Picture.new(
#   user: dimitri,
#   remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533011/Dimitri_btefya.png")
# picture.save!

nim = User.new(
  name: "Nim",
  email: "nim_test@gmail.com",
  bio: "Work hard, party hard! Work hard, party hard! Work hard, party hard!Work hard, party hard!Work hard, party hard!Work hard, party hard!Work hard, party hard!",
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
picture = Picture.create(
  user: nim,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533010/nim_wcfdy0.jpg")
picture.save!

picture = Picture.create(
  user: nim,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533010/nim_pq8opv.jpg")
picture.save!


picture = Picture.create(
  user: nim,
  remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533010/nim_wcfdy0.jpg")
picture.save!

# leon = User.new(
#   name: "Leon",
#   email: "leon_test@gmail.com",
#   bio: "No Questions?",
#   age: 24,
#   gender: "Male",
#   preferred_gender: "Both",
#   preferred_match_type: "Friends",
#   role: "user",
#   lower_age_preference: 18,
#   upper_age_preference: 40,
#   password: "password"
#   )
# leon.save!
# picture = Picture.new(
#   user: leon,
#   remote_url_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1563533010/Leon_freee7.jpg")
# picture.save!

puts "Create Organisor"

organizer = User.new(
  name: "Manny D",
  email: "manny_test@gmail.com",
  bio: "Organising Festivals like a pro",
  age: 21,
  gender: "Male",
  preferred_gender: "Both",
  preferred_match_type: "Friends",
  role: "organizer",
  lower_age_preference: 18,
  upper_age_preference: 40,
  password: "password"
  )
organizer.save!

puts "Creating fake events"
lollapaloza = Event.new(
  name: "Lollapaloza",
  remote_background_image_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564067933/lollap_back_d9kbqk.jpg",
  start_date: "26/06/2019",
  end_date: "30/06/2019",
  remote_logo_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564067780/LollaBerlin18_Logo_color_stacked_bigdbf.png",
  welcome_message: "Welcome to Lollapaloza! We encourage you to connect with many new people, create new friendships and get out of your comfort zone",
  user: nim,
  primary_color: "#00af9a",
  secondary_color: "#F0037E",
  token: "7f727fe0c4cd86a1402d"
  )
lollapaloza.save!

puts "Creating fake events"

helene = Event.new(
  name: "Helene Beach Festival ",
  remote_background_image_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564070792/helleneback_yjuyjv.jpg",
  start_date: "07/08/2019",
  end_date: "09/08/2019",
  remote_logo_url: "https://res.cloudinary.com/daw34oiuq/image/upload/v1564069205/hellene_logo_kwoljq.png",
  welcome_message: "Welcome to Helene Festival! Use this app to connect with other participants ahead of the event.",
  user: organizer,
  primary_color: "#0e3556",
  secondary_color: "#dfb62d",
  token: "bcd80dd95c14c6a985b3"
  )
helene.save!

puts 'creating new participants, all going to lollapaloza'

# annap = Participant.new(
#   user: anna,
#   event: helene
#   )
#   annap.save!
mariap = Participant.new(
  user: maria,
  event: helene
  )
  mariap.save!
franp = Participant.new(
  user: fran,
  event: helene
  )
  franp.save!

# ninap = Participant.new(
#   user: nina,
#   event: helene
#   )
#   ninap.save!

leilap = Participant.new(
  user: leila,
  event: helene
  )
 leilap.save!

sabrinap = Participant.new(
  user: sabrina,
  event: helene
  )
  sabrina.save!

alexp = Participant.new(
  user: alex,
  event: helene
  )
  alexp.save!

hannahp = Participant.new(
  user: hannah,
  event: helene
  )
  hannahp.save!


timp = Participant.new(
  user: tim,
  event: helene
  )
timp.save!

danp = Participant.new(
  user: dan,
  event: helene
  )
danp.save!

paulp = Participant.new(
  user: paul,
  event: helene
  )
paulp.save!

# markp = Participant.new(
#   user: mark,
#   event: helene
#   )
# markp.save!

# philp = Participant.new(
#   user: dan,
#   event: helene
#   )
# philp.save!

tomp = Participant.new(
  user: tom,
  event: helene
  )
tomp.save!

sammyp = Participant.new(
  user: sammy,
  event: helene
  )
sammyp.save!

# andyp = Participant.new(
#   user: andy,
#   event: helene
#   )
# andyp.save!

# dimitrip = Participant.new(
#   user: dimitri,
#   event: helene
#   )
# dimitrip.save!

nimp = Participant.new(
  user: nim,
  event: helene
  )
nimp.save!

# leonp = Participant.new(
#   user: leon,
#   event: helene
#   )
# leonp.save!

# tonip = Participant.new(
#   user: toni,
#   event: helene
#   )
# tonip.save!

# richp = Participant.new(
#   user: rich,
#   event: helene
#   )
# rich.save!

# luisp = Participant.new(
#   user: luis,
#   event: helene
#   )
# luisp.save!

lup = Participant.new(
  user: lu,
  event: helene
  )
lup.save!

puts "create a swipe for lu"


s2 = Swipe.new(
  participant_1: paulp,
  participant_2: mariap,
  participant_1_liked: nil,
  participant_2_liked: true
  )
s2.save!


s3 = Swipe.new(
  participant_1: paulp,
  participant_2: franp,
  participant_1_liked: nil,
  participant_2_liked: true
  )
s3.save!

s4 = Swipe.new(
  participant_1: paulp,
  participant_2: lup,
  participant_1_liked: true,
  participant_2_liked: true
  )
s4.save!


 puts "a match for paul"

m4 = Match.new(swipe: s4)
m4.save!



puts 'Finished!'

