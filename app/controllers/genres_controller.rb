class GenreController < ApplicationController


  def deslug(str)
    deslug = str.gsub("-", " ")
    deslug = str.gsub("_", " ")
    deslug
  end

  get '/genres' do
    @genres = Genre.all
    erb :"genres/index"
  end

  get '/genres/:slug' do
    arr = []
    @deslugged = deslug(params[:slug])
    #Genre.any?(@slug) ? redirect "/genres/#{@slug}" : redirect "/artist/#{@slug}"
    # binding.pry
    @genre = Genre.find_by(name: @deslugged)
    @genre ||= Genre.find(params[:slug])
    @genre.songs.each {|f| arr << f.artist}
    @genre_artists = arr.flatten   
      erb :"/genres/show"
    end
end
