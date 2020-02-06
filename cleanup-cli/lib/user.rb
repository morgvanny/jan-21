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

  def add_character(char)
    char.user = self
  end

  def description
    <<~END
    #{name} is from #{city}.

    This user has the following characters:
    #{characters.map.with_index(1){|c, i| "#{i}. #{c.name}"}.join("\n")}

    END
  end



  def characters
    Character.all.select do |character|
      character.user == self
    end
  end

end
