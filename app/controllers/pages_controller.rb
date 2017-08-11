class PagesController < ApplicationController
  def home
    @cocktails = Cocktail.first(6)
    @reviews = Review.first(3)
  end
end
