class Movie < ApplicationRecord
  def self.import
    (1..100).each do #|page|
      movie_resp = HTTP.get("https://api.themoviedb.org/3/discover/movie?api_key=GOES HERE&language=en-US&sort_by=release_date.desc&page=#{page}&with_genres=27")
      movie_resp.each do #|movie|
        Movie.create(
          original_title: movie['original_title'],
          overview: movie['overview'],
          poster_path: movie['poster_path'],
          tagline: movie['tagline'],
        )
      end
    end 
  end 
end
