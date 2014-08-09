require 'rspec'
require 'artist.rb'
require 'work.rb'

describe Artist do
  
  describe Artist.all do
    it 'provides a place to hold all artist objects' do
      expect(Artist.all).to eq []
    end 
  end
  
  it 'is initialized with a name and style' do
      test_artist = Artist.new({'name' => 'Mary Cassatt', 'style' => 'Impressionism'})
      expect(test_artist).to be_an_instance_of Artist
  end
  
  it 'lets you read out the name and style of an artist' do
    test_artist = Artist.new({'name' => 'Mary Cassatt', 'style' => 'Impressionism'})
    expect(test_artist.name).to eq 'Mary Cassatt'
    expect(test_artist.style).to eq 'Impressionism'
  end
  
  it 'saves artist information into the collection' do
    test_artist = Artist.new({'name' => 'Mary Cassatt', 'style' => 'Impressionism'})
    expect(test_artist.save).to eq [test_artist]
  end
  
  it 'adds a work to a specific artist' do
    test_artist = Artist.new({'name' => 'Mary Cassatt', 'style' => 'Impressionism'})
    test_work = Work.new({'name' => 'Summertime', 'year' => '1894'})
    test_artist.add_work(test_work)
    expect(test_artist.works).to eq [test_work]
  end
  
end
