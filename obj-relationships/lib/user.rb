class User
  @@all = []
  attr_accessor :name, :city

  def initialize(name, city)
    self.name = name
    self.city = city
    self.save
  end

  def save
    #can validate or normalize data here
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.add_character(char)
    char.user = self
  end

  def description
    "#{name} is from #{city}."
  end

  def characters
    Character.all.select do |character|
      character.user == self
    end
  end

end


3.times{User.new(Faker::Name.name, Faker::Address.city)}
