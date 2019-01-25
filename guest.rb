require("pry")

class Guest

attr_reader :name, :wallet, :song

  def initialize (name, wallet, song)
    @name = name
    @wallet = wallet
    @song = song
  end

  def pay_for_suite(room)
    @wallet -= room.price
  end

end
