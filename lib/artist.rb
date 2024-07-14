class Artist
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
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        song
    end

    def genres
        genres = []
        songs.each do |song|
           genres << song.genre
        end
        genres.uniq
    end

end