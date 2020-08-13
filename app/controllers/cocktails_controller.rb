class CocktailsController < ApplicationController
before_action :set_restaurant, only: [:show, :new]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @restaurant = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render "new"
    end

  def

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @cocktails = Cocktail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def restaurant_params
      params.require(:cocktail).permit(:name)
    end
end
