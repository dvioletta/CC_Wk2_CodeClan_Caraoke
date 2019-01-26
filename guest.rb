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

  def favourite_song()
    return @song
  end

  def when_favourite_song_plays(song)
    return @name.any?{ |song| name.song == song }
  end

end
