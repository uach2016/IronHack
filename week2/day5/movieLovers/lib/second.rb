# class Graphical_Movie_Rating
# 	def initialize
# 		@movies = load_movies
# 	end

# 	# def load_movies
# 	# 	IO.read('movies.txt').split("\n")
# 	# end

#     def search_movie
#         @movies.each_with_index do |movie, index|
#             movie = Imdb::Search.new(movie)
#             current_movie = movie.movies[0]            
#             @movies[index] = Movie.new current_movie.title,
#                                        current_movie.rating
#             print @movies[index], index + 1
#         end
#     end

#     def print movie, index
       
#         puts movie.graphical_rating
#         puts "#{index}. #{movie.title}"
#     end
# end

# class Movie
#     attr_reader :title, :rating, :graphical_rating

#     def initialize title, rating  
#         @title = title
#         @rating = rating.round(0)
#         @graphical_rating = ('# ' * @rating).split(" ")
#     end
# end


