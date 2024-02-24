class EntriesController < ApplicationController

  def new
 
    @place = Place.find_by({ "id" => params["place_id"] })

  end

  def create

    @entry = Entry.new
    @entry["title"] = params["name"]
    @enrty["description"] = params["description"]
    @enrty["posted_on"] = params["posted_on"]
    @enrty["place_id"] = params["place_id"]
    # save place
    @entry.save
    # redirect user
    redirect_to "/places/#{@entry["place_id"]}"
  

  end

end