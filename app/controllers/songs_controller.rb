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
    # binding.pry
    @song = Song.find_by(name: @deslugged)
    @song ||= Song.find(params[:slug])
    @song_artist_id = @song.artist.id
    @song_genre_slug = @song.genres[0].id
      erb :"/songs/show"
    end
  end
