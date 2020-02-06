class CharacterCreator
  KLASSES = ["Barbarian", "Bard", "Cleric", "Druid", "Fighter",
            "Monk", "Paladin", "Ranger", "Rogue", "Sorcerer",
            "Warlock", "Wizard", "Artificer"]

  def fake
    Character.new_from_hash({
      name: Faker::Name.first_name,
      level: rand(1..20),
      klass: KLASSES.sample,
      strength: rand(1..20),
      lives: rand(1..5),
      speed: rand(1..35),
      health: rand(20..200),
    })
  end


  def create_characters_from_pokeapi
    url = "https://pokeapi.co/api/v2/pokemon?offset=0&limit=100"
    response = RestClient.get(url)
    hash = JSON.parse(response, symbolize_names: true)

    pokemon = hash[:results].map do |p_hash|
      Character.new_from_hash(p_hash)
    end

    pokemon.each do |c|
      c.user = User.all.sample
    end
  end

end