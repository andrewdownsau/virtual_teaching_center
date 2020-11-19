# frozen_string_literal: true

class Teachers::ProfilesController < ApplicationController
  # GET /resource/profile/index
  def index
    if params[:search].present?
      @teachers = Teacher.where('last_name ILIKE ?', "%#{params[:search][:last_name]}%")
    else
      @teachers = Teacher.all
    end
  end

  # GET /resource/profile
  def show
    @teacher = Teacher.where(id: params[:id]).first
    @teacher_classes = TeacherClass.where(teacher_id: params[:id])
  end

  # protected

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # The path used after confirmation.
  # def after_confirmation_path_for(resource_name, resource)
  #   super(resource_name, resource)
  # end
end
