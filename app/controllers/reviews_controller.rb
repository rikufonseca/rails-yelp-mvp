class ReviewsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(params_review)
    # il faut rattacher review a ce restaurant
    # @review.restaurant_id = @restaurant.id
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      # IL FAUT PRECISER DANS QUEL DOSSIER ET DANS QUEL ACTION NOUS VOULONS ALLER, parce que nous sommes pas dans le meme controleur
      render 'restaurants/show'
    end
  end

  private

  def params_review
    params.require(:review).permit(:content, :rating)
  end
end
