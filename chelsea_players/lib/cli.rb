class CLI

  def start
    Scraper.new.scrape_roster

    puts "Welcome to the Chelsea Players Roster App."
    main_menu
  end

  def main_menu
    puts "What would you like to do?"
    puts ""
    puts "1. List players"
    puts "2. Exit"
    puts nil
    input = gets.strip

    if input == "1"
      list_players
    elsif input == "2"
      goodbye
    else
      input_error
      main_menu
    end
  end

  def goodbye
    puts "Thanks, seeya later!"
  end

  def input_error
    puts "That wasn't one of the options, please try again."
  end

  def list_players
    puts nil
    Player.all.each.with_index(1){|p, i| puts "#{i}. #{p.name}" }
    player_list_menu
  end

  def player_list_menu
    puts "Select a player to see more info about them,"
    puts "or type 'exit' to leave, or 'menu' to start over."

    input = gets.strip
    idx = input.to_i - 1
    if input.downcase == "menu"
      main_menu
    elsif input.downcase == "exit"
      goodbye
    elsif idx.between?(0, Player.all.length)
      display_player(idx)
    else
      input_error
      player_list_menu
    end
  end

  def display_player(idx)
    player = Player.all[idx]
    puts player.info

    display_player_menu
  end

  def display_player_menu
    puts "What would you like to do now?"
    puts "1. Back to player list"
    puts "2. Back to main menu"
    puts "3. Exit"

    input = gets.strip

    if input == "1"
      list_players
    elsif input == "2"
      main_menu
    elsif input == "3"
      goodbye
    else
      input_error
      display_player_menu
    end
  end
end
