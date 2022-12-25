Rails.application.routes.draw do
  get '/admin/items/search' => 'admin/items#search'

  namespace :admin do
    resources :homes, only: [:top]
    resources :items, only: [:index, :show, :new, :create]
  end

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
end
