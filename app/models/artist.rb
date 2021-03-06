# This class describes the model class for Artist, with the following relationship:
# Artists can have many genres and songs
require_relative 'concerns/Slugifiable'
class Artist < ActiveRecord::Base
  extend Slugifiable
  has_many :songs
  has_many :genres, through: :songs
end
