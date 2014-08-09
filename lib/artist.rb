class Artist
  
  attr_reader :name, :style
  
  def initialize(attributes)
    @name = attributes['name']
    @style = attributes['style']
  end

end