
require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    

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

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        g_count = @@genres.each_with_object(Hash.new(0)) do |a, count|
        count[a] +=1
        end
    end

    def self.artist_count
        a_count = @@artists.each_with_object(Hash.new(0)) do |a, count|
        count[a] +=1
        end
    end



end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")


ninety_nine_problems.name
# => "99 Problems"

ninety_nine_problems.artist
# => "Jay-Z"

ninety_nine_problems.genre
# => "rap"




