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
  
  def self.new_by_name
    @@all << self.new
    name
  end
  
  def self.create_by_name
    @@all << self.new
    return [ #{name}, #{artist_name}]
  end
  
  def name
    @@name
  end

end
