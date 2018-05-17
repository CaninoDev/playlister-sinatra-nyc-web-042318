class ArtistController < ApplicationController

  def self.find_by_slug(str)
    self.all.select do {|artist| artist.slug == str}
  end

  def deslug(str)
    deslug = str.gsub("-", " ")
    deslug = str.gsub("_", " ")
    deslug
  end

  get '/artists' do
    @artists = Artist.all
    erb :"artists/index"
  end

  get '/artists/:slug' do
    arr = []
    @deslugged = deslug(params[:slug])
    @artist = Artist.find_by_slug(name: @deslugged)
    @artist ||= Artist.find(params[:slug])
    @artist.songs.each {|f| arr << f.genres }
    @artist_genres = arr.flatten
      erb :"/artists/show"
    end

end
