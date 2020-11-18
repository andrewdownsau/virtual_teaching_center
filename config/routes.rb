Rails.application.routes.draw do
  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions',
    registrations: 'teachers/registrations'
  }

  root 'main#index'

  get '/teachers/profiles', to: 'teachers/profiles#index', as: 'teacher_profiles_index'
  get '/teachers/profiles/:id', to: 'teachers/profiles#show', as: 'teacher_profile'
end
