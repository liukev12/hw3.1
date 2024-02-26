class EntriesController < ApplicationController

  def new
 
    @place = Place.find_by({ "id" => params["place_id"] })

  end

  def create
    # Create new entries 
    @entry = Entry.new
    # Input all data into the table 
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]
    @entry["place_id"] = params["place_id"]
   
    # save place
    @entry.save
    # redirect user
    redirect_to "/places/#{@entry["place_id"]}"
  

  end

end