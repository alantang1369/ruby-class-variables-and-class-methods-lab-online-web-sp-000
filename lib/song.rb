class Song 
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  
    @@count += 1
    @@genres << genre
    @@artists << artist
    if  !@@genres.include? (genre)
        @@genre_count[genre] = 1
         
    else  
       @@genre_count[genre] += 1
      
    end  
    
    if  !@@artists.include? (artist)
        @@artist_count[artist] = 1
    else 
      
      @@artist_count[artist] += 1
    end  
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists
  end
  
  def self.genres
    @@genres
  end
  
  def self.artist_count
    @@artist_count
  end
  
  def self.genre_count
    @@genre_count
  end
end  