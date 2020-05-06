class Artist
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def new_song(title, genre)
    Song.new(self, title, genre)
  end
  
  def genres
    songs.collect {|song| song.genre}
  end
  
end