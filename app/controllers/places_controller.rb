class PlacesController < ApplicationController
  def index
    places = Place.all 
    render json: places.as_json
  end
  def show
    place = Place.find_by(id: params[:id])
    render json: place.as_json
  end
  def create
    place = Place.new(
      name: params["name"],
      address: params["address"]
    )
    place.save
    render json: place.as_json
  end

  def update
    place = Place.find_by(id: params[:id])
    place.name = params[:name] || place.name
    place.address = params[:address] || place.address
    place.save
    render json: place.as_json
  end

  def destroy
    place = Place.find_by(id: params[:id])
    place.delete
    render json: {message: "Place destroyed!"}
  end
end
