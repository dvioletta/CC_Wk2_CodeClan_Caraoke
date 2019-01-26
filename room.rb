require("pry")

class Room

attr_reader :suite, :price, :capacity, :guest, :playlist

  def initialize (suite, price, capacity)
    @suite = suite
    @price = price
    @capacity = capacity
    @playlist = []
    @guest = []
  end

  def add_song(songs)
    @playlist << songs
    return @playlist
  end

  def add_guest(party)
    @guest << party
    return @guest
  end

  def remove_guest(guest)
    @guest.delete(guest)
    return @guest
  end

  def room_capacity()
    return @capacity
  end


end
