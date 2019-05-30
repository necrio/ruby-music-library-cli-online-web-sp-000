class Artist
  extend Concerns::Findable
  attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    save
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

def self.create(name)
      self.new(name).tap do |artist|
        artist.save
      end
end

  def self.destroy_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def add_song(song)
      @songs << song unless @songs.include?(song)
      song.artist = self if song.artist.nil?
  end

  def genres
    songs.collect{|song| song.genre}.uniq
  end

end
