require "sinatra"
require "sinatra/reloader"
require_relative "./lib/blog"
require_relative "./lib/post"


blog = Blog.new

get "/welcome_page" do
  erb(:welcome_page)
end


post "/result" do

title = params[:title]	
text = params[:text]
category = params[:category]	
author = params[:author]


post = Post.new title, text, category, author

		if params[:action] == "add"
  		blog.add_post post
  		end
@posts = blog.posts

erb(:result)
end

post "/post_details" do
	name = params[:name]
	@content = blog.find_index name	


	erb(:post_details)
end

