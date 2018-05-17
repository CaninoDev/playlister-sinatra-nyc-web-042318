class GenreController < ApplicationController


  get '/genres' do
    @genres = Genre.all
    erb :"genres/index"
  end

  get '/genres/:id' do
    @genre = Genre.find(params[:id])
  end
end
