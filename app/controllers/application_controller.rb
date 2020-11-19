class ApplicationController < ActionController::Base
  before_action :set_variables

def set_variables
  @categories = Category.all
end
end
