class Api::PitchesController < ApplicationController

  def index
    @pitches = Pitch.all
    render "index.json.jbuilder"
  end

  def show
    pitch_id = params["id"]
    @pitch = Pitch.find_by(id: pitch_id)
    render "show.json.jbuilder"
  end

  def create
    @pitch = Pitch.new(
      title: params["title"],
      logline: params["logline"],
      genre: params["genre"],
      synopsis: params["synopsis"],
      producer_statment: params["producer statement"],
      thematic_description: params["thematic description"],
      visual_style_description: params["visual style description"],
      filmmaker_bio: params["filmmaker bio"]
    )

    if @pitch.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end

  # def destroy
  #   @pitches = Pitch.find_by(id: params[:id])
  #   @pitch.destroy
  #   render json: {message: "Post successfully destroyed!"}
  # end
end



  # Image.create(url: params["image_url"], product_id: @product.id)