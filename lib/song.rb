#define song class with name, artist and genre
#attr_accessor
#class variables for count (return the total number of songs created)
#genre (and a method that returns an array of all existing songs -
# only unique genres, no duplicates!! (compact??)),
#method artists which returns for all existing songs, ALSO unique/no duplicates
#genre_count returns a hash in which the keys are the names of each genre.
# Each genre name key should point to a value that is the number
# of songs that have that genre.
# artist count similar to the genre count above

require 'pry'

class Song

@@count = 0

@@genres = []


@@artists = []

attr_accessor :name, :genre, :artist

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre

@@genres << genre
@@artists << artist
@@count += 1

end

def self.count
 @@count
end

def self.genres
 @@genres.uniq
end

def self.artists
  @@artists.uniq
end

def self.genre_count
  num_songs_by_genre = {}
  current_genres = self.genres
  current_genres.each do |genre|
    num_songs_by_genre[genre] = @@genres.count(genre)

  end
  num_songs_by_genre
end

def self.artist_count
  num_songs_by_artist = {}
  current_artists = self.artists
  current_artists.each do |artist|
    num_songs_by_artist[artist] = @@artists.count(artist)

  end
  num_songs_by_artist
end

end
jay_z = Song.new("99 Problems", "Jay-Z", "rap")
beyonce = Song.new("Halo", "Beyonce", "R&B")
# binding.pry
