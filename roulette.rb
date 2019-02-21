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
  end
end