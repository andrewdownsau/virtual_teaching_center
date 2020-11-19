class ApplicationController < ActionController::Base
  before_action :set_variables

  def set_variables
    # Categories must be set for the navigation menu which is on every page
    # This used as a model so that a potential admin could edit what categories to use
    @categories = Category.all
  end
end
