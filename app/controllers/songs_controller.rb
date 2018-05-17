class SongController < ApplicationController


  get '/songs' do
    # binding.pry
    @songs = Song.all
    erb "songs/index"
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
  end
end
