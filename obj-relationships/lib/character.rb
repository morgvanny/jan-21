class Character
  attr_accessor :strength, :name, :klass, :lives, :speed, :health, :user
  attr_reader :score, :level

  @@all = []

  def self.new_from_hash(hash)
    new("").tap { |c| hash.each { |properties, value| c.send("#{properties}=", value)}}
  end

  def self.all
    @@all
  end

  def self.strong(name)
    new(name).tap {|c| c.strength = "500"}
  end

  def self.weak(name)
    new(name).tap {|c| c.strength = "5"}
  end
  
  # def user
  #   @user
  # end

  # def user=(user_object)
  #   @user = user_object

  #   self.user.characters.delete_if{|c| c.user == self}
  #   user_object.characters << self
  # end


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

  private

  attr_writer :score, :level

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
