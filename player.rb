class Player
  attr_acessor :name, :money
  def initialize
    puts 'Whats your name?'
    @name = gets.strip
    @money = 100.00
  end
end