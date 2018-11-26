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
      producer_statement: params["producer statement"],
      thematic_description: params["thematic description"],
      visual_style_description: params["visual style description"],
      filmmaker_bio: params["filmmaker bio"],
      user_id: current_user.id
    )

    if @pitch.save
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