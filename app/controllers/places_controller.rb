class PlacesController < ApplicationController
def index
    @places= Place.all
end

def new
    @place= Place.new
end

def create
    @place = Place.new
    @place["name"] = params["place"]["name"]
    @place ["date"] = params["place"]["date"]
    @place ["notes"]= params["place"]["notes"]
    @place.save
    redirect_to "/places"
end



end
