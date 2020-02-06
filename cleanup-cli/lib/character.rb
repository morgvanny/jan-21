class Character
  attr_accessor :strength, :name, :klass, :lives, :speed, :health, :url
  attr_reader :score, :level, :user

  @@all = []

  def self.new_from_hash(hash)
    new("").tap do |c|
      hash.each do |properties, value|
        c.send("#{properties}=", value) if c.respond_to? "#{properties}="
      end
    end
  end

  def update_from_pokeapi
    if self.url && !self.health
      response = RestClient.get(url)
      hash = JSON.parse(response, symbolize_names: true)

      self.health = hash[:stats].find do |e|
        e[:stat][:name] == "hp"
      end[:base_stat]

      self.klass = hash[:types].map do |h|
        h[:type][:name]
      end.join(', ')
    end
    self

  end

  def self.all
    @@all
  end

  def user=(user)
    if user.class == User
    @user = user
    else
      raise "A character's user must be assigned a user instance."
    end
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
    Owned by: #{user.name}
    END
  end

  private

  attr_writer :score, :level

end