# frozen_string_literal: true

class Teachers::ProfilesController < ApplicationController
  # GET /resource/profile/index
  def index
  end

  # GET /resource/profile
  def show
    @teacher = Teacher.where(id: params[:id]).first
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
