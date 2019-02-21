require_relative 'black_jack'
require_relative 'poker'
require_relative 'roulette'
require_relative 'slots'
require 'pry'
require 'colorize'

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
      BlackJack.new
    when 2
      Poker.new
    when 3
      Roulette.new
    when 4
      Slots.new
    else
      puts 'Inavalid Input'.colorize(:red)
    end
  end

end

casino = Casino.new
casino.greeting