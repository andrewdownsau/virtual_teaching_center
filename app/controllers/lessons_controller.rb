class LessonsController < ApplicationController
  before_action :find_class_lesson, except: [:create]

  def create
    @teacher_class = TeacherClass.find(params[:teacher_class_id])
    @lesson =  @teacher_class.lessons.create(lesson_params)
    redirect_to teacher_class_path(@teacher_class)
  end

  def edit
  end

  def update
		if @lesson.update(lesson_params)
			redirect_to @teacher_class
		else
			render 'edit'
		end
  end

  def destroy
    @lesson.destroy

    redirect_to teacher_class_path(@teacher_class)
  end

  private
  def lesson_params
    params.require(:lesson).permit(:title, :description, :date, :start_time, :end_time)
  end

  def find_class_lesson
    # Lesson is a nested resource of class and therefore only teacher class need to be queried
    @teacher_class = TeacherClass.find(params[:teacher_class_id])
    @lesson = @teacher_class.lessons.find(params[:id])
  end
end
