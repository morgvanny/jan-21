class Player

  @@all = []

  attr_accessor :name, :nationality, :position, :number

  def self.create_from_hash(hash)
    p = Player.new
    hash.each do |key, value|
      p.send("#{key}=", value) if p.methods.include?("#{key}=".to_sym)
    end
    p.save
  end

  def self.all
    @@all
  end

  def save
    @@all << self

    self
  end

  def info
    <<~INFO
    Name: #{name}
    Position: #{position}
    Number: #{number}
    Nationality: #{nationality}

    INFO
  end

end