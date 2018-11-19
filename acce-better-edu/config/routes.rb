Rails.application.routes.draw do

  devise_for :users

  root 'dashboard#index'

  get 'dashboard/', to: 'dashboard#index'

  #Ruta para los formularios de la aplicación web
  resources :departamento

  resources :ciudad

  resources :universidad

  resources :rol

  resources :tipodocumento

  resources :persona

  #Ruta para api rest

  namespace :api do
    namespace :v1 do
      resources :departamento
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
