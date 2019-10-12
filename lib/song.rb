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
   
    def self.find_or_create_by_name(song_name)
      self.find_by_name(song_name) || self.create_by_name(song_name)
         end 
     
     def self.alphabetical
       self.all.sort_by {|song| song.name}
    end
    def self.new_from_filename(song)
        split_file = song.split(" - ")
        artist = split_file [0]
        song_name = split_file[1].split(".")[0]
        song = self.new_by_name(song_name)
        song.artist_name = artist
        song
        end
        
    def self.create_from_filename(song)
        
      
         
end
