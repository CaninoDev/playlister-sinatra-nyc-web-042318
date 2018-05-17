# This is the slug class. For parsing filenames in the following format: Artist - Song.mp3
module Slugifiable
  def deslug(str)
    deslug = str.gsub("-", " ")
    deslug = str.gsub("_", " ")
    deslug
  end

  def slug
    self.name.gsub(" ", "-")
  end
end

