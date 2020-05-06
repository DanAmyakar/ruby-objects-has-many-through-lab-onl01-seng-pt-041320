require 'pry'

class Song
  
  attr_accessor :title, :artist, :genre
  @@all = []
  
  def initialize(title, artist, genre)
    binding.pry
    @title = title
    @artist = artist
    @genre = genre
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end