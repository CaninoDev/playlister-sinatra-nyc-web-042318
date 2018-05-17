class SongController < ApplicationController


  def deslug(str)
    deslug = str.gsub("-", " ")
    deslug = str.gsub("_", " ")
    deslug
  end

  get '/songs' do
    # binding.pry
    @songs = Song.all
    erb :"songs/index"
  end

  get '/songs/:slug' do
    @deslugged = deslug(params[:slug])
    #Genre.any?(@slug) ? redirect "/genres/#{@slug}" : redirect "/artist/#{@slug}"
    binding.pry
    @song_id = Song.find_by(name: @deslugged).id
    redirect "/songs/#{@song_id}"
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
    erb :"/songs/show"
  end
end
