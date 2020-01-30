require 'pry'

class Character
  attr_accessor :strength, :name, :score

  @@all = []

  def self.strong(name)
    char = self.new(name)
    char.strength = 500

    char
  end

  def self.weak(name)
    char = self.new(name)
    char.strength = 5
    char
  end


  def initialize(name)
    @name = name
    self.score = 0
    @@all << self
  end


  def say_attributes
    puts "Name: " + self.name
    puts "Strength: " + self.strength.to_s
    puts "Score: " + self.score.to_s
  end


end

character = Character.new("asdf")
character.strength = 40
strong_guy = Character.strong("bob")
weak_guy = Character.weak('joe')

another_strong = Character.strong("asdf")

character.say_attributes
strong_guy.say_attributes
weak_guy.say_attributes

binding.pry
#
# details = {
#   name: "Biff",
#   level: 5,
#   klass: "Knight",
#   score: 2400,
#   strength: 17,
#   lives: 3,
#   speed: 6,
#   health: 100
# }
#
# # biff = Character.new("Biff", 5, "Knight", 2400, 17, 3, 6, 100)
# biff = Character.create(details)
#
# biff.say_description
