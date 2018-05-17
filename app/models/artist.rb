# This class describes the model class for Artist, with the following relationship:
# Artists can have many genres and songs
class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs
end
