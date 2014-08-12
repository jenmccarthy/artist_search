class Artist
  
  attr_reader(:name, :style, :works, :all_artists)
  
  @@all_artists = []
  
  def initialize(attributes)
    @name = attributes['name']
    @style = attributes['style']
    @works = []
  end

  def Artist.all
    @@all_artists   
  end
  
  def Artist.clear
    @@all_artists = []
  end
  
  def search
    self.works
  end
  
  def save
    @@all_artists << self
  end
  
  
  def add_work(input_work)
    self.works << input_work
  end
  
end