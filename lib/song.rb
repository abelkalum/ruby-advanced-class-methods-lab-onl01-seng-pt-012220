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
  
  def self.create
    @@all << self.new
    self.new
  end
  
  def self.new
    @@all << self.new
    song.name
  end
  
  def name
    @@name
  end

end
