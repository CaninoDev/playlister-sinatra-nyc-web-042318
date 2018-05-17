# This class describes the model class for Genre, with the following relationship:
# Genres have many songs, and through songs, many artists
class Genre < ActiveRecord::Base
  has_many :songgenres
  has_many :songs, through: :songgenres
  has_many :artists, through: :songs
end
