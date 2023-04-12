Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("directors/youngest", { :controller => "directors", :action => "youngest" })

  get("directors/eldest", { :controller => "directors", :action => "wisest" })

  get("directors/:an_id", { :controller => "directors", :action => "director_details" })

  get("movies", { :controller => "movie", :action => "movieIndex" })
  get("movies/:movie_id", { :controller => "movie", :action => "movie_details" })

  get("actors", { :controller => "actor", :action => "actorIndex" })

end
