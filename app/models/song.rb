# This class describes the model class for Song, with the following relationship:
# Songs belong to one artist and has many genres.
class Song < ActiveRecord::Base

  def slug
    self.name.gsub(" ", "-")
  end

  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres
end
