require 'sinatra'
require 'pry'
require 'sinatra/reloader' if development?
enable(:sessions)

get '/hi' do
	'From Sinatra'
end

get '/about' do
	@show = true
	@time = Time.now.strftime('%Y-%m-%d @ %H:%M:%S')
	@repos = ['Repo One', 'Repo Two', 'Repo Three']
	session[:my_name] = "unai"
	#binding.pry
	erb :about
end

get '/repos/:repo' do
	@time = Time.now.strftime('%Y-%m-%d @ %H:%M:%S')
	@name = session[:my_name]

	@repos = ['Repo One', 'Repo Two', 'Repo Three']
	repo_int = params[:repo].to_i
	if repo_int < 1 || repo_int > @repos.length
		@repo = 'Not exist repo...'
	else
		@repo = @repos[repo_int - 1]
	end 
	erb :repo
end

get '/testing' do
	'hola'
end

get '/hola' do
	redirect '/testing'
end