Rails.application.routes.draw do
  get '/admin/' => 'admin/homes#top'
  get '/admin/items/search' => 'admin/items#search'
  get '/admin/items/review' => 'admin/items#review'

  namespace :admin do
    resources :items, only: [:index, :show, :new, :create]
  end

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
end
