require("pry")

class Room

attr_reader :suite, :price, :capacity

  def initialize (suite, price, capacity)
    @suite = suite
    @price = price
    @capacity = capacity
    @song = []
    @guest = []
  end


end
