class MoviesProcess

    def search_movie movie
        @searched = Imdb::Search.new(movie).movies

        show_movies
    end

    def show_movies
        @nine_movies = []

        for index in 0 ... 9
            @nine_movies<<@searched[index].poster 
        end 

        @nine_movies
    end

end