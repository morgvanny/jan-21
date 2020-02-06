class Cli

  def run
    puts "Welcome to the game creation screen"
    morgan = User.new("Morgan", "Las Vegas")
    ryan = User.new("Ryan", "San Diego")
    CharacterCreator.new.create_characters_from_pokeapi
    menu
  end

  def menu
    # binding.pry
    puts "Here is a list of options"
    puts "Type 1 to create a character"
    puts "Type 2 to list your characters"
    puts "Type 3 to list your users"
    puts "Type exit to exit program"
    menu_input
  end

  def menu_input
    user_input = gets.strip
    if user_input == "exit"
      goodbye
    elsif user_input == "1"
      create_character
      menu
    elsif user_input == "2"
      list_characters
      list_characters_menu
      menu
    elsif user_input == "3"
      list_users
      list_users_menu
      menu
    else
      incorrect_input
      menu
    end
  end

  


  def goodbye
    puts "Terminating Program, see you again!"
  end

  def incorrect_input
    puts "Did you mean to type that? I don't understand, try again!"
  end

  def create_character
    puts "Ready to create a character? Wonderful, let's get started!"
    print "Let's start with your character's name: "
    attributes = {}
    attributes[:name] = gets.strip

    print "\n What is your characters level: "

    attributes[:level] = gets.strip

    print "\n What is your characters class: "
    attributes[:klass] = gets.strip
    print "\n What is your characters strength: "
    attributes[:strength] = gets.strip
    print "\n What is your characters lives: "
    attributes[:lives] = gets.strip
    print "\n What is your characters speed: "
    attributes[:speed] = gets.strip
    print "\n What is your characters health: "
    attributes[:health] = gets.strip


    new_character = Character.new_from_hash(attributes)

    puts new_character.description
  end

  def list_characters
    puts "Here's a list of all the characters you've created! And if you didn't create them, make sure to run anti-virus scans often or ask your other half."
    puts "-----------"
    Character.all.each.with_index(1) do |character, index|
      puts "#{index}. #{character.name}"
    end
    puts "-----------"
  end

  def list_users
    puts "Here's a list of all the users you've created! And if you didn't create them, make sure to run anti-virus scans often or ask your other half."
    puts "-----------"
    User.all.each.with_index(1) do |u, index|
      puts "#{index}. #{u.name}"
    end
    puts "-----------"
  end

  def list_characters_menu
    puts "To view a character's details, enter the corresponding number: "
    input = gets.strip.to_i - 1
    if !input.between?(0, Character.all.length - 1)
      puts "Sorry, you must enter a number between 1 and #{Character.all.length}."
      list_characters_menu
    else
      character = Character.all[input]
      character.update_from_pokeapi
      puts character.description # <-- my goal
    end
  end

  def list_users_menu
    puts "To view a user's details, enter the corresponding number: "
    input = gets.strip.to_i - 1
    if !input.between?(0, User.all.length - 1)
      puts "Sorry, you must enter a number between 1 and #{Character.all.length}."
      list_users_menu
    else
      u = User.all[input]
    puts u.description # <-- my goal
    end
  end
end