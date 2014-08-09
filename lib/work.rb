class Work

  attr_reader(:name, :year)
  
  def initialize(attributes)
    @name = attributes['name']
    @year = attributes['year']
  end
  


end