class Api::PitchesController < ApplicationController
  before_action :authenticate_user

  def index
    @pitches = Pitch.all
    @pitches = current_user.pitches
    render "index.json.jbuilder"
  end

  def show
    pitch_id = params["id"]
    @pitch = Pitch.find_by(id: pitch_id)
    render "show.json.jbuilder"
  end

  def create
    puts current_user
    @pitch = Pitch.new(
      title: params["title"],
      logline: params["logline"],
      genre: params["genre"],
      synopsis: params["synopsis"],
      producer_statement: params["producer_statement"],
      thematic_description: params["thematic_description"],
      visual_style_description: params["visual_style_description"],
      filmmaker_bio: params["filmmaker_bio"],
      user_id: current_user.id
    )

    if @pitch.save
      Location.create(
        name: params["location_name"],
        description: params["location_description"],
        pitch_id: @pitch.id
      )
      Character.create(
        first_name: params["first_name"],
        last_name: params["last_name"],
        description: params["character_description"],
        pitch_id: @pitch.id
      )
      Music.create(
        name: params["song_name"],
        artist: params["artist"],
        description: params["song_description"],
        pitch_id: @pitch.id
      )
      render "show.json.jbuilder"
    else
      render json: {errors: @pitch.errors.full_messages}, status: 422
    end
  end

  # def destroy
  #   @pitches = Pitch.find_by(id: params[:id])
  #   @pitch.destroy
  #   render json: {message: "Post successfully destroyed!"}
  # end
end



  # Image.create(url: params["image_url"], product_id: @product.id)