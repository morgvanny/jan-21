# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

notes = [
    {
      "title": "First",
      "content": "This is the first note"
    },
    {
      "title": "Shopping",
      "content": "Buy milk"
    },
    {
      "title": "Last",
      "content": "Final Note"
    },
    {
      "title": "a real title",
      "content": "asdf",
    },
    {
      "title": "Our Revolution hello",
      "content": "aa",
    },
    {
      "title": "a real title",
      "content": "asdf",
    },
    {
      "title": "asdf",
      "content": "111",
    }
  ]

  notes.each do |note|
    Note.create!(note)
  end
