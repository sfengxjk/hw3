class LocationsController < ApplicationController
  def index
    @locations = Place.all
  end

  def show
    @showlocation = Place.find_by({"id" => params["id"]})
    @showjournals = Entry.where(place_id: @showlocation["id"])
  end

  def new
  end

  def create
    location = Place.new
    location.name = params["name"]
    location.save
    redirect_to "/locations"
  end



end
