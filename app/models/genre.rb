# This class describes the model class for Genre, with the following relationship:
# Genres have many songs, and through songs, many artists
require_relative 'concerns/Slugifiable'
class Genre < ActiveRecord::Base
  extend Slugifiable
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs
end
