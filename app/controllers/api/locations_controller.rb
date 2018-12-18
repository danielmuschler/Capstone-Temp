class Api::LocationsController < ApplicationController
  def create
    Location.create(
        name: params["location_name"],
        description: params["location_description"],
        pitch_id: params["pitch_id"]
      )
  end
end
