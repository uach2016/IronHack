require_relative 'post'

class Blog
	attr_accessor :posts
	def initialize
		@posts = []
	end

	def add_post post
		@posts.push(post)
	end
	
	def show_post_title
	@posts.each do |post|
		puts post.title
	end
	
	end
	
	def show_post_date
		@posts.each do |post|
			puts post.date
		end
	end
	
	def show_text index
		index = index.to_i
		@content = @posts[index].text
	
	end
	
	def latest_posts
		@posts.sort! { |post1, post2| post1.date <=> post2.date }
		
	end
	
	def find_index title
	
	@index = @posts.index{|x|x.title==title}
	
	show_text @index
	end
end




