class LocationsController < ApplicationController
  def index
    @locations = Place.all
  end

  def show
    @location = Place.find_by({"id" => params["id"]})
    @journals = Entry.where(place_id: @location["id"])
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
