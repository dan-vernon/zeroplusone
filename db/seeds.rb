# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Skill.destroy_all
User.destroy_all

User.create!(first_name: "bob", last_name:"hoskins", hero: true, location: "sw114jp", password: "123123", email: "hello@gmail.com", dob: Date.yesterday)
User.create!(first_name: "bub", last_name:"hoskins", hero: false, location: "sw114jp", password: "123123", email: "hello@gmil.com")

skills = Skill.create(
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
