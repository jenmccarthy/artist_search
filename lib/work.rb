class Work

  attr_reader(:name, :year)
  
  @@all_works 
  
  def initialize(attributes)
    @name = attributes['name']
    @year = attributes['year']
  end
  
  def Work.all
    @@all_works = []
  end
  
  def save 
    @@all_works << self 
  end
  
end