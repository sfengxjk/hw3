class JournalsController < ApplicationController
  def new
    @location = Place.find(params["place_id"])
  end

  def create
    journal = Entry.new
    journal.title = params["title"]
    journal.occurred_on = params["occurred_on"]
    journal.description = params["description"]
    journal.place_id = params["place_id"]
    journal.save
    redirect_to "/locations/#{journal.place_id}"
  end
end
