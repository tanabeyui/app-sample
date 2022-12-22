Rails.application.routes.draw do
  namespace :admin do
    get 'items/index'
    get 'items/search'
    get 'items/show'
  end
  namespace :admin do
    get 'homes/top'
  end
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
end
