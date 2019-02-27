require 'faker'

Skill.destroy_all
User.destroy_all

# seed skills

Skill.create!(
  [{skillset: 'talking about law'},
    {skillset: 'juggling'},
    {skillset: 'charming mothers in law'},
    {skillset: 'schmoozing business associates'},
    {skillset: 'dad dancing'},
    {skillset: 'getting hilariuosly drunk'},
    {skillset: 'getting on with difficult relatives'},
    {skillset: 'convincing your grandma that you will pass on the family name' },
    {skillset: 'foreign language'},
    {skillset: 'great party tricks'},
    {skillset: 'making friends with animals'},
    {skillset: 'wine tasting'},
    {skillset: 'sartorial elegance'},
    {skillset: 'break dancing'},
    {skillset: 'karaoke'},
    {skillset: 'owns a gilet'},
    {skillset: 'recognising bird calls'},
    {skillset: 'good at regional accents'}])

# seed users

20.times do
  User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  location: Faker::Address.city,
  bio: Faker::Hipster.sentence,
  hero: [true,false].sample,
  dob: Faker::Date.backward(20000), password: "password",
  photo: open("https://loremflickr.com/600/800/hero"))
end

50.times do
  Booking.create!(
    description: Faker::Superhero.name,
    date: Faker::Date.between(20.days.ago, Date.today),
    hero: User.heroes.sample,
    zero: User.zeroes.sample
    )
end
