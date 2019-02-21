require 'pry'
require 'colorize'

class Roulette

  def initialize
    puts '============================'
    puts '          ROULETTE          '
    puts '============================'
    menu
  end

  def menu
    puts 'Welcome To Roulette'
    puts 'please make a selection'
    puts '1) Play'
    puts '2) View Wallet'
    puts '3) Leave Table'
    puts '4) EXIT'.colorize(:red)
    @input = gets.to_i
    menu_options
  end

  def menu_options
    case @input
    when 1
      game
    when 2
      wallet
  end
end