class MoviesController < ApplicationController
  require_relative '../.api_key.rb'
  def index
    (1..10).each do |page|
      response = HTTP.get("https://api.themoviedb.org/3/discover/movie?api_key=#{$api_key}&language=en-US&sort_by=release_date.desc&page=#{page}&with_genres=27") 
    end 
    render json: response
  end
end

# puts response

