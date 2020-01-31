class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create(song)
    @@all << self.new
  end
  
  def name
    @@name
  end
  
  def song
    @@song
  end

end
