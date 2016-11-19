class CollectionsController < ApplicationController

  def show
  end

  def index
  end

  private

  def collection_params
    params.require(:collection).permit(:title, :year, :description)
  end

  def find_collection
    @collection = Collection.find params[:id]
  end
end
