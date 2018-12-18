class Api::CharactersController < ApplicationController
  def create
    Character.create!(
        first_name: params["character_first_name"],
        last_name: params["character_last_name"],
        description: params["character_description"],
        pitch_id: params["pitch_id"]
      )
  end
end
