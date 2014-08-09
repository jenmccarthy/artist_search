require 'rspec'
require 'artist.rb'

describe Artist do
  
  it 'is initialized with a name and style' do
    test_artist = Artist.new({'name' => 'Mary Cassatt', 'style' => 'Impressionism'})
    expect(test_artist).to be_an_instance_of Artist
  end
  
  it 'lets you read out the name and style of an artist' do
    test_artist = Artist.new({'name' => 'Mary Cassatt', 'style' => 'Impressionism'})
    expect(test_artist.name).to eq 'Mary Cassatt'
    expect(test_artist.style).to eq 'Impressionism'
  end
  
  it 'provides a place to hold all artists' do
    expect(Artist.all).to eq []
  end
  
  it 'saves artist information into the collection' do
    test_artist = Artist.new({'name' => 'Mary Cassatt', 'style' => 'Impressionism'})
    expect(test_artist.save).to eq [test_artist]
  end
  
end
