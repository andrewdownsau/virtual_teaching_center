Rails.application.routes.draw do
  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions',
    registrations: 'teachers/registrations'
  }

  root 'main#index'

  get '/categories', to: 'categories#index', as: 'category_index'
  get '/categories/:title', to: 'categories#show', as: 'category'

  get '/teachers/profiles', to: 'teachers/profiles#index', as: 'teacher_profiles_index'
  get '/teachers/profiles/:id', to: 'teachers/profiles#show', as: 'teacher_profile'
end
