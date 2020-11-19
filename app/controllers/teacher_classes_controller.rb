class TeacherClassesController < ApplicationController
  def index
    if params[:search].present?
      @teacher_classes = TeacherClass.where('title ILIKE ?', "%#{params[:search][:title]}%")
      if params[:search][:last_name].present?
        @teacher = Teacher.where('last_name ILIKE ?', "%#{params[:search][:last_name]}%").first
        @teacher_classes = TeacherClass.where('title ILIKE ? AND teacher_id = ?', "%#{params[:search][:title]}%", @teacher.id)
      end
    else
      @teacher_classes = TeacherClass.all
    end
  end

  def show
    @teacher_class = TeacherClass.find(params[:id])
    @teacher = Teacher.find(@teacher_class.teacher_id).title + " " + Teacher.find(@teacher_class.teacher_id).last_name
  end

  def new
    @teacher_class = TeacherClass.new
  end

  def create
    @teacher_class = current_teacher.teacher_classes.create(teacher_class_params)
    redirect_to teacher_class_path(@teacher_class)
  end

  def edit
    @teacher_class = TeacherClass.find(params[:id])
  end

  def update
    @teacher_class = TeacherClass.find(params[:id])
 
		if @teacher_class.update(teacher_class_params)
			redirect_to @teacher_class
		else
			render 'edit'
		end
  end

  def destroy
    @teacher_class = TeacherClass.find(params[:id])
		@teacher_class.destroy
 
		redirect_to teacher_profile_path(Teacher.find(@teacher_class.teacher_id))
  end

  private

  def teacher_class_params
    params.require(:teacher_class).permit(:title, :category_id, :description, :min_students, :max_students, :price, :image)
  end
end
