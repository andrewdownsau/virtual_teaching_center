Rails.application.routes.draw do
  devise_for :teachers
  root 'main#index'
end
