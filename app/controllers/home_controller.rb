class HomeController < ApplicationController

  def index
    @products = Product.all

    @categories = Category.all
  end

  def category
    category = Category.find(params[:id])
    @products = category.products

    @categories = Category.all
  end
end
