class Api::V1::PlacesController < Api::V1::BaseController
  before_action :set_category

  def index
    @places = @category.places
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end
end
