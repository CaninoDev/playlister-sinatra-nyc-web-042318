# This is the slug class. For parsing filenames in the following format: Artist - Song.mp3
class Slugifiable
  def self.deslug(str)
    deslug = str.gsub("-", " ")
    deslug = str.gsub("_", " ")
    deslug
  end
end
