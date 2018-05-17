# This SongGenre class provides the join table between Song and Genre
class SongGenre < ActiveRecord::Base
  belongs_to :song
  belongs_to :genre
end
