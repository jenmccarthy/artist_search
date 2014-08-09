class Artist
  
  attr_reader(:name, :style, :works)
  
  @@all_artists 
  
  def initialize(attributes)
    @name = attributes['name']
    @style = attributes['style']
    @works = []
  end

  def Artist.all
    @@all_artists = []  
  end
  
  def save
    @@all_artists << self
  end
  
  
  def add_work(input_work)
    self.works << input_work
  end
  
end