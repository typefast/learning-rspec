require 'spec_helper'

describe Song do 
  
  before :each do 
    @song = Song.new("Name", "Artist", "Length")
  end
  
  describe "#new" do 
    it "returns a new song object" do 
      expect(@song).to( be_an_instance_of(Song) )
    end
  
    it "should throw an error if there are less than 3 parameters" do
      expect(lambda { Song.new("Name", "Artist") }).to( raise_exception(ArgumentError) )
    end
  end
  
  describe "#name" do 
    it "returns the song name" do
      expect(@song.name).to eql "Name"
    end
  end
  
end