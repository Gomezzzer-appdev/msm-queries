class DirectorsController < ApplicationController

  def index
    @List_of_directors = Director.all

  render({ :template => "director_templates/index.html.erb"})
  end

  def wisest

    render({ :template => "director_templates/eldest.hmtl.erb" })
  end

end
