class MoviesController < ApplicationController

  def guide
    @List_of_movies = Movie.all

  render({ :template => "movie_templates/guide.html.erb"})
  end
end
