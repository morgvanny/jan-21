class Cli

  def run
    puts "Welcome to the game creation screen"
    menu
  end

  def menu
    # binding.pry
    puts "Here is a list of options"
    puts "Type 1 to create a character"
    puts "Type 2 to list your characters"
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
    else
      incorrect_input
      menu
    end
  end


  def goodbye
    puts "Terminating Program, see you again!"
    exit
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

  def list_characters_menu
    # problems:
    # there is no error handling
    # also, need to convert my input to an integer
    puts "To view a character's details, enter the corresponding number: "
    input = gets.strip.to_i - 1
    character = Character.all[input]
    puts character.description # <-- my goal
  end
end