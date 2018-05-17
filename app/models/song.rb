# This class describes the model class for Song, with the following relationship:
# Songs belong to one artist and has many genres.
require_relative 'concerns/Slugifiable'
class Song < ActiveRecord::Base
  extend Slugifiable
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres
end
