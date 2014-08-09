class Artist
  
  attr_reader(:name, :style)
  
  @@all_artists 
  
  def initialize(attributes)
    @name = attributes['name']
    @style = attributes['style']
  end

  def Artist.all
    @@all_artists = []  
  end
  
  def save
    @@all_artists << self
  end
  
end