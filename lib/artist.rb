class Artist
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name=name
    @songs=songs
    @@all << self
  end
  
  def self.all
    @@all
  end

def songs
  Song.all.select {|song| song.artist == self}
end

def genres 
  songs.map {|song|song.genre}
end

def new_song(song,genre)
  Song.new(name, self, genre)
end


    


end