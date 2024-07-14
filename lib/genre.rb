class Genre
       @@all = []
       attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        # Artist.all.select {|artist| artist.genre == self}
        artists = []
        songs.each do |song|
           artists << song.artist
        end
        artists.uniq
    end


end