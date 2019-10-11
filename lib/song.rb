require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
    
    def self.create 
        song = self.new
       song.save
       song
      end
    
    def self.new_by_name(song_name)
       song = self.create
       song.name = song_name
        song
    end 
    
    def self.create_by_name(song_name)
        self.new_by_name(song_name)
    end
    
    def self.find_by_name(song_name)
        self.all.find {|track| track.name == song_name}
    end 
    def self find_or_create_by_name(song_name)
          
            if self.find_by_name(song_name) == song_name
              
            else self.create_by_name(song_name)
            end
    end
end
