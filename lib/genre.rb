class Genre
  
  attr_accessor :type
  @@all = []
  
  def initialize(type)
    @type = type
    @@all << self
  end
  
  
  
end