
class Post 
	attr_reader :title, :date, :text, :sponsor

	def initialize title, date, text, sponsor
		@title = title
		@date = date
		@text = text
		@sponsor = sponsor
		#@date = Time.now - (rand * 86400 * 30)
	end
end

class Blog 

	def initialize 
		@array_post = []
	end

	def add_post post
		@array_post.push(post)
	end

	def publish_front_page

		date_organized = @array_post.sort do |post1, post2|
	 		post2.date <=> post1.date
		end

	  date_organized.each do |post|
	  	if post.sponsor == true
	  	  puts "xxxxxxxxxxxxxxxxx" "Título: #{post.title} |  Fecha: #{post.date}|  Contenido: #{post.text}"
	  	else puts "Título: #{post.title} |  Fecha: #{post.date}|  Contenido: #{post.text}"
	  	end
	  end
	end
end





blog = Blog.new
blog.add_post Post.new("Post title 2", Time.local(2015, 10, 9), "Hola soy el primer post", true)

blog.add_post Post.new("Post title 3", Time.local(2015, 10, 10), "Hola soy el primer post", false)

blog.add_post Post.new("Post title 1", Time.local(2015, 10, 7), "Hola soy el primer post", true)


blog.publish_front_page