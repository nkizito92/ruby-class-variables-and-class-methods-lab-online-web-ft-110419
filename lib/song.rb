class Song 
  attr_accessor :artist, :genre, :name
  @@artists = []
  @@count = 0
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    
    @genre = genre 

    @@genres << genre

   
    @artist = artist
    @@artists << artist
  end 
  
  def self.genre_count

    @@genres.inject(Hash.new(0)) {|max, i| max[i]+=1; max}
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) {|max, i| max[i]+=1; max}
  end 
  
   def self.artists 
     @@artists.uniq
   end 
    
    def self.count 
      @@count 
    end 
    
end 

Song.count
Song.artists



