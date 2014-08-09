require 'rspec'
require 'work.rb'
require 'artist.rb'

describe Work do
  
  describe Work.all do
    it 'provides a place to hold all artists work objects' do
    expect(Work.all).to eq []
    end 
  end

  it 'will initialize an artists work with a name and date' do
    test_work = Work.new({'name' => 'Summertime', 'year' => '1894'})
    expect(test_work).to be_an_instance_of Work
  end
  
  it 'lets you read out the name and year of a work' do
    test_work = Work.new({'name' => 'Summertime', 'year' => '1894'})
    expect(test_work.name).to eq 'Summertime'
    expect(test_work.year).to eq '1894'
  end
  
end
