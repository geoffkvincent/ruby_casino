require_relative 'black_jack'
require_relative 'poker'
require_relative 'roulette'
require_relative 'slots'
require_relative 'player'
require 'pry'
require 'colorize'

class Casino

  def initialize
    @player = Player.new
    menu
  end

  def menu
    puts '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
    puts '   Welcome To Ruby Casino'
    puts '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
    puts '======Choose a Game====='
    puts '1) Black Jack'
    puts '2) Poker'
    puts '3) Roulette'
    puts '4) Slots'
    puts '5) View Wallet'
    puts '6) EXIT'.colorize(:red)
    puts '========================'
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
    when 5
      wallet
    when 6
      exit
    else
      puts 'Inavalid Input'.colorize(:red)
    end
  end

  def wallet
    puts '=====WALLET======'
    puts "Hey #{@player.name}."
    puts "You have $#{@player.money} left"
    sleep(3)
    puts '....taking you back to main menu'
    sleep(3)
    puts `clear`
    menu
  end

end

Casino.new