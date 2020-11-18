class TeacherClassesController < ApplicationController
  def index
    if params[:search].present?
      @teacher_classes = TeacherClass.where('title ILIKE ?', "%#{params[:search][:title]}%")
    else
      @teacher_classes = TeacherClass.all
    end
  end

  def show
    @teacher_class = TeacherClass.find(params[:id])
  end

  def new
    @teacher_class = TeacherClass.new
  end

  def create
    @teacher_class = current_teacher.teacher_class.create(teacher_class_params)
    redirect_to teacher_class_path
  end

  def edit

  end

  private

  def teacher_class_params
    params.require(:teacher_class).permit(:title, :category_id, :description, :min_students, :max_students, :price)
  end
end
