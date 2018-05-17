# This class describes the model class for Song, with the following relationship:
# Songs belong to one artist and has many genres.
class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :songgenres
  has_many :genres, through: :songgenres
end
