Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  get("/locations", {:controller => "locations", :action => "index"})
  #get("/locations/new", {:controller => "locations", :action => "new"})
  #post("/locations", {:controller => "locations", :action => "create"})
  #get("/locations/:id", {:controller => "locations", :action => "show"})
  get("/journals/new", { :controller => "journals", :action => "new" })
  post("/journals",    { :controller => "journals", :action => "create" }) 

  resources "places"
  resources "entries"
  resources "locations"

end

