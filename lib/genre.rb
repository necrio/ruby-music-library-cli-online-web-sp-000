class Genre
  extend Concerns::Findable
    attr_accessor :name, :songs
    @@all = []
    def self.all
      @@all
    end

    def initialize(name)
      @name = name
      @songs = []
      save
    end

    def save
      @@all << self
    end

    def self.create(name)
          self.new(name).tap do |genre|
            genre.save
          end
    end

      def self.destroy_all
        @@all.clear
      end

      def artists
        songs.collect{|song| song.artist}.uniq
      end
end
