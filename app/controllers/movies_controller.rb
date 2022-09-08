class MoviesController < ApplicationController
 
  def index
    movie_arr = []
    (1..100).each do |page|
      movie_resp = HTTP.get("https://api.themoviedb.org/3/discover/movie?api_key=GOESHERE&language=en-US&sort_by=release_date.desc&page=#{page}&with_genres=27") 
      movie_arr << movie_resp
    end 
    render json: movie_arr
  end
end

# puts response

