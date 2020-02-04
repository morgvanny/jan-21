class CharacterCreator
  KLASSES = ["Barbarian", "Bard", "Cleric", "Druid", "Fighter",
            "Monk", "Paladin", "Ranger", "Rogue", "Sorcerer",
            "Warlock", "Wizard", "Artificer"]

  def fake
    Character.new_from_hash({
      name: Faker::Name.name,
      level: rand(1..20),
      klass: KLASSES.sample,
      strength: rand(1..20),
      lives: rand(1..5),
      speed: rand(1..35),
      health: rand(20..200),
    })
  end
end