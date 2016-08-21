require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'lib/movie.rb'
require 'pry'

require 'imdb'

get '/welcome_pg' do
erb(:welcome_pg)
end

post '/search' do
	
	name      = params[:movie]
	movies   = MoviesProcess.new
	@result   = movies.search_movie name

	erb(:search)
end
