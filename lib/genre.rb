
class Genre
   attr_reader :name, :songs

   @@all = []
   def initialize(name)
      @name = name
      @songs = Song.all

      @@all << self
   end

   def self.all
      @@all
   end

   def artists
      @songs.map {|song| song.artist}
   end
end