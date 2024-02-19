class PlacesController < ApplicationController

  # Fetches all places and assigns them to @places for the index view
  def index
    @places = Place.all
  end

  # Finds a specific place by id and its related entries for the show view
  def show
    @place = Place.find(params[:id])
    @entries = Entry.where(place_id: @place.id)
  end

  # Prepares a new place instance for the new view
  def new
    @place = Place.new
  end

  # Creates a new Place record with the name from form parameters, saves it, and redirects to the places list
  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end

end
