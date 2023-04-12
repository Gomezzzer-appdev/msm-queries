class ActorController < ApplicationController

  def actorIndex
    @List_of_actors = Actor.all

  render({ :template => "actor_templates/index.html.erb"})
  end 
end
