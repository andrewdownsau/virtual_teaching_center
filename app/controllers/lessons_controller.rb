class LessonsController < ApplicationController
  def create
    @teacher_class = TeacherClass.find(params[:teacher_class_id])
    @lesson =  @teacher_class.lessons.create(lesson_params)
    redirect_to teacher_class_path(@teacher_class)
  end

  def edit
    @teacher_class = TeacherClass.find(params[:teacher_class_id])
    @lesson = Lesson.find(params[:id])
  end

  def update
    @teacher_class = TeacherClass.find(params[:teacher_class_id])
    @lesson = Lesson.find(params[:id])
 
		if @lesson.update(lesson_params)
			redirect_to @teacher_class
		else
			render 'edit'
		end
  end

  def destroy
    @teacher_class = TeacherClass.find(params[:teacher_class_id])
    @lesson = @teacher_class.lessons.find(params[:id])
    @lesson.destroy

    redirect_to teacher_class_path(@teacher_class)
  end

  private
  def lesson_params
    params.require(:lesson).permit(:title, :description, :date, :start_time, :end_time)
  end
end
