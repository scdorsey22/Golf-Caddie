class TeeColorsController < ApplicationController
  only: %i[ show update destroy ]

  # GET /tee_colors
  def index
    @tee_colors = TeeColor.all

    render json: @tee_colors
  end

  # GET /tee_colors/1
  def show
    render json: set_tee_color
  end

  # POST /tee_colors
  def create
    @tee_color = TeeColor.new(tee_color_params)

    if @tee_color.save
      render json: @tee_color, status: :created, location: @tee_color
    else
      render json: @tee_color.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tee_colors/1
  def update
    if @tee_color.update(tee_color_params)
      render json: @tee_color
    else
      render json: @tee_color.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tee_colors/1
  def destroy
    @tee_color.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tee_color
      @tee_color = TeeColor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tee_color_params
      params.require(:tee_color).permit(:color)
    end
end
