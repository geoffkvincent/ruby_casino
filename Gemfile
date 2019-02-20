gem 'pry'
gem 'colorize'

class Casino

  def greeting
    puts 'Welcome To Ruby Casino'
    menu
  end

  def menu
    puts 'Choose a Game'
    puts '1) Black Jack'
    puts '2) Poker'
    puts '3) Roulette'
    puts '4) Slots'
    @menu_input = gets.to_i
    menu_options
  end

  def menu_options
    case @menu_input
    when 1
      # black jack
    when 2
      #poker
    when 3
      #Roulette
    when 4
      #slots
    else
      puts 'Inavalid Input'.colorize(:red)
    end
  end

end