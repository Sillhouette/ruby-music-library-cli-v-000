class Artist

  attr_accessor :name, :songs, :genres

  @@all = [];

  def initialize(name)
    @name = name;
    @songs = [];
  end

  def self.all
    @@all;
  end

  def self.destroy_all
    @@all.clear;
  end

  def self.create(name)
    song = Artist.new(name);
    song.save;
    song;
  end

  def save
    @@all << self;
  end

  def songs
    @songs;
  end

  def add_song(song)
    if !song.artist
      song.artist = self;
    end
    if !@songs.include?(song)
      @songs << song;
    end
  end

end
