require 'faker'

UserSkill.destroy_all
Skill.destroy_all
User.destroy_all
Booking.destroy_all
Review.destroy_all


# seed skills

puts "Seeding skills"

Skill.create!(
  [{skillset: 'talking about law'},
    {skillset: 'juggling'},
    {skillset: 'charming mothers in law'},
    {skillset: 'schmoozing business associates'},
    {skillset: 'dad dancing'},
    {skillset: 'getting hilariously drunk'},
    {skillset: 'getting on with difficult relatives'},
    {skillset: 'convincing your grandmother that you are going to pass on the family name' },
    {skillset: 'speaking a foreign language'},
    {skillset: 'great party tricks'},
    {skillset: 'making friends with all animals'},
    {skillset: 'wine tasting'},
    {skillset: 'sartorial elegance'},
    {skillset: 'break dancing'},
    {skillset: 'karaoke'},
    {skillset: 'owns a gilet'},
    {skillset: 'recognising bird calls'},
    {skillset: 'good at most regional accents'}])

# seed users
puts "Seeding users"

20.times do
  User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  location: Faker::Address.city,
  bio: Faker::Hipster.sentence,
  hero: [true,false].sample,
  dob: Faker::Date.backward(20000),
  password: "password",
  photo: open("https://loremflickr.com/600/800/person")
  )
  # puts "User created"
end

  User.create!(
  [{first_name: 'Alex',
  last_name:  'E',
  email: 'alex@alex.com',
  location: 'London',
  bio: 'I used to work as a building surveyor for a private building control company',
  hero: true,
  dob: Faker::Date.between('1945-01-01', '2001-01-01'),
  password: "password",
  photo: open("https://avatars1.githubusercontent.com/u/46600044?v=4")
  },
  {first_name: 'Dan',
  last_name:  'V',
  email: 'dan@dan.com',
  location: 'London',
  bio: "Camberwell resident, belligerent cyclist, font of Hoxton/Haggerston eating/drinking knowledge. Self-appointed winner of Best 'Tache Batch #222",
  hero: true,
  dob: Faker::Date.between('1945-01-01', '2001-01-01'),
  password: "password",
  photo: open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/i2d2bgvj9lfpbyoo7vs1.jpg")
  },
  {first_name: 'Clementine',
  last_name:  'C',
  email: 'Clementine@Clementine.com',
  location: 'London',
  bio: 'I enjoy tennis, rock climbing, painting.',
  hero: true,
  dob: Faker::Date.between('1945-01-01', '2001-01-01'),
  password: "password",
  photo: open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/pkoojatqokuphwpgmopa.jpg")
  },
  {first_name: 'Edoardo',
  last_name:  'O',
  email: 'Edoardo@Edoardo.com',
  location: 'London',
  bio: 'I  have worked as a chef here in London for several years',
  hero: true,
  dob: Faker::Date.between('1945-01-01', '2001-01-01'),
  password: "password",
  photo: open("https://avatars0.githubusercontent.com/u/45206889?v=4")
  },
  {first_name: 'Esther',
  last_name:  'C',
  email: 'esther@esther.com',
  location: 'London',
  bio: 'I enjoy cooking, doing yoga, watching movies and musicals',
  hero: true,
  dob: Faker::Date.between('1945-01-01', '2001-01-01'),
  password: "password",
  photo: open("https://avatars2.githubusercontent.com/u/40442483?v=4")
  },
  {first_name: 'Hugo',
  last_name:  'M',
  email: 'Hugo@hugo.com',
  location: 'London',
  bio: 'I Previously worked in graphic design & branding jobs.',
  hero: true,
  dob: Faker::Date.between('1945-01-01', '2001-01-01'),
  password: "password",
  photo: open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/m9ut43h0zzjhpgkk3o1e.jpg")
  },
  {first_name: 'Izzy',
  last_name:  'W',
  email: 'Izzy@izzy.com',
  location: 'London',
  bio: 'I like the Economist, niche museums, and hiking!',
  hero: true,
  dob: Faker::Date.between('1945-01-01', '2001-01-01'),
  password: "password",
  photo: open("https://avatars1.githubusercontent.com/u/40670298?v=4")
  },
  {first_name: 'Jack',
  last_name:  'B',
  email: 'jack@jack.com',
  location: 'London',
  bio: 'I am a freelance film director, visionary and storyteller.',
  hero: true,
  dob: Faker::Date.between('1945-01-01', '2001-01-01'),
  password: "password",
  photo: open("https://avatars1.githubusercontent.com/u/39552144?v=4")
  },
  {first_name: 'Janie',
  last_name:  'A',
  email: 'Janie@Janie.com',
  location: 'London',
  bio: ' am always interesting in learning new things',
  hero: true,
  dob: Faker::Date.between('1945-01-01', '2001-01-01'),
  password: "password",
  photo: open("https://avatars3.githubusercontent.com/u/43782388?v=4")
  },
  {first_name: 'Jonny',
  last_name:  'G',
  email: 'Jonny@Jonny.com',
  location: 'London',
  bio: "I don't know what exactly I'll do after graduation",
  hero: true,
  dob: Faker::Date.between('1945-01-01', '2001-01-01'),
  password: "password",
  photo: open("https://avatars2.githubusercontent.com/u/40580116?v=4")
  },
  {first_name: 'Maddie',
  last_name:  'L',
  email: 'maddie@maddie.com',
  location: 'London',
  bio: '
I just finished my A-levels and am on a gap year.',
  hero: true,
  dob: Faker::Date.between('1945-01-01', '2001-01-01'),
  password: "password",
  photo: open("https://avatars1.githubusercontent.com/u/34004218?v=4")
  },

])


puts "seeding UserSkills"

50.times do
  UserSkill.create!(
    user: User.heroes.sample,
    skill: Skill.all.sample)
end

puts "Seeding bookings"

20.times do
  Booking.create!(
    description: Faker::Superhero.name,
    date: Faker::Date.between(20.days.ago, Date.today),
    hero: User.heroes.sample,
    zero: User.zeroes.sample
    )
end

puts "Seeding complete."



puts "Seeding reviews"

50.times do
  Review.create!(
  content: Faker::Quote.most_interesting_man_in_the_world,
  user: User.last,
  booking: Booking.all.sample,
  ratings: (1..5).to_a.sample
  )
end


puts "Seeding complete"














