# frozen_string_literal: true

require 'pry'

class Dog
  attr_reader :name

  attr_writer :name

  def bark
    puts "#{name} says: Ruff Ruff"
  end
end

class Human
  attr_accessor :name, :age

  attr_reader :happiness

  @@all = []

  def self.all
    @@all
  end

  def initialize(age)
    @age = age
    @happiness = 50
    @@all << self
  end

  def self.max_height
    height = 0

    @@all.each do |human|
      height = human.height if human.height > height
    end
    height
  end

  def birthday_happened
    @happiness += 10
  end

  def get_bullied
    @happiness -= 25
  end

  def speak(message)
    puts "#{name} says: #{message}"
  end
end

lassie = Dog.new
lassie.name = 'Lassie'

morgan = Human.new(29)
morgan.speak("I'm speaking right now")

Human.all

binding.pry
