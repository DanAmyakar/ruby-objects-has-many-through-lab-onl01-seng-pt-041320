class Genre
  
  attr_accessor :type
  @@all = []
  
  def initialize(type)
    @type = type
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end