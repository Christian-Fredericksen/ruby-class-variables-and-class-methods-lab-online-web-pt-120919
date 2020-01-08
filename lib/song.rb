require "pry"
class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
 
  def initialize(name, artist, genre)
    @@count +=1
    @name=name
    @artist=artist
    @genre=genre
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    library = {}
    @@genres.each do |genre|
      if library.key?(genre)
        library[genre] += 1 
      else
        library[genre] = 1 
      end
    end
    library
  end
  
  def self.artist_count
    library = {}
    @@artists.each do |artist|
      if library.key?(artist)
        library[artist] += 1 
      else
        library[artist] = 1 
      end
    end
    library
  end
   
   
   
   
   
   
   
   
   
   
   
   
    
  
  
end