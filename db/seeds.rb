require 'faker'

Skill.destroy_all
User.destroy_all
UserSkill.destroy_all
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

10.times do
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
  last_name:  'Elsden',
  email: 'alex@alex.com',
  location: 'London',
  bio: 'I used to work as a building surveyor for a private building control company',
  hero: true,
  dob: faker.date.between('1945-01-01', '2001-01-01'),
  password: "password",
  photo: open("https://loremflickr.com/600/800/person")
  }
  # {first_name: ,
  # last_name: ,
  # email: ,
  # location: ,
  # bio: ,
  # hero: ,
  # dob: ,
  # password: "password",
  # photo: open("https://loremflickr.com/600/800/person")
  # },

])


puts "seeding UserSkills"

10.times do
  UserSkill.create!(
    user: User.heroes.sample,
    skill: Skill.all.sample)
end

puts "Seeding bookings"

10.times do
  Booking.create!(
    description: Faker::Superhero.name,
    date: Faker::Date.between(20.days.ago, Date.today),
    hero: User.heroes.sample,
    zero: User.zeroes.sample
    )
end

puts "Seeding complete."

