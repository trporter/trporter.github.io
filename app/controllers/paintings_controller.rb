class PaintingsController < ApplicationController

  def show
    @painting = Painting.find params[:id]
    respond_to do |format|
      format.html
      format.json {render json: {painting: @painting}}
    end
  end

  def index
    @paintings = Painting.order("name ASC")
  end

  private

  def painting_params
    params.require(:painting).permit(:title, :year, :description, :dimentions)
  end

  def find_painting
    @painting = Painting.find params[:id]
  end
end
