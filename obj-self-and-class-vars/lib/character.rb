class Character
  attr_accessor :strength, :name, :score, :level, :klass, :lives, :speed, :health

  @@all = []

  def self.new_from_hash(hash)
    new("").tap { |c| hash.each { |properties, value| c.send("#{properties}=", value)}}
  end

  def self.all
    @@all
  end

  def self.strong(name)
    char = self.new(name)
    char.strength = "500"

    char
  end

  def self.weak(name)
    char = self.new(name)
    char.strength = "5"
    char
  end


  def initialize(name)
    @name = name
    self.score = 0
    @@all << self
  end


  def description
    <<~END
    
    Name: #{name}
    Strength: #{strength}
    Score: #{score}
    Class: #{klass}
    Level: #{level}
    Lives: #{lives}
    Speed: #{speed}
    Health: #{health}

    END
  end

end

details = {
  name: "Biff",
  level: 5,
  klass: "Knight",
  strength: 17,
  lives: 3,
  speed: 6,
  health: 100,
}


biff = Character.new_from_hash(details)

skriff = Character.new_from_hash({
  name: "Skriff",
  level: 9,
  klass: "Ranger",
  strength: 14,
  lives: 2,
  speed: 15,
  health: 100,
})






#
# # biff = Character.new("Biff", 5, "Knight", 2400, 17, 3, 6, 100)
# biff = Character.create(details)
#
# biff.say_description
