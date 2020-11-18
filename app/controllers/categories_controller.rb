class CategoriesController < ApplicationController
  def index

  end

  def show
    @category_title = params[:title]
    @category = Category.where(title: @category_title)
    @teacher_classes = TeacherClass.where( category_id: @category.first.id )
  end
end
