class CategoriesController < ApplicationController
  def index

  end

  def show
    @category_title = params[:title]

    # Need to show all of the classes that have the appropriate category to show
    # Since I'm using title of category in the route, it must be found and matched
    @category = Category.where(title: @category_title)
    @teacher_classes = TeacherClass.where( category_id: @category.first.id )
  end
end
