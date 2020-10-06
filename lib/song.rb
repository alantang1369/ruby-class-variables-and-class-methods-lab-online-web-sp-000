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
    
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    array = []
    @@artists.each do |a|
      array << a unless array.include? (a)
    end
    array
  end
  
  def self.genres
    array = []
    @@genres.each do |a|
      array << a unless array.include? (a)
    end
    array
  end
  
  def self.artist_count
    @@artist_count
  end
  
  def self.genre_count
    @@genre_count
  end
end  