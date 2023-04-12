class ActorController < ApplicationController

  def actorIndex
    @List_of_actors = Actor.all

  render({ :template => "actor_templates/index.html.erb"})
  end 

  def actor_details

    actor_id = params.fetch("actor_id")
    @actor = Actor.where({ :id => actor_id}).at(0)

    characters = Character.where({ :actor_id => actor_id })
      list_of_movie_ids = characters.map_relation_to_array(:movie_id)

      @filmography = Movie.where({ :id => list_of_movie_ids })



    render({ :template => "actor_templates/actor_details.html.erb"})
  end
end
