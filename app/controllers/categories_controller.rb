class CategoriesController < ApplicationController
  def index

  end

  def show
    @category_title = params[:title]
  end
end
