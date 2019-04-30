Rails.application.routes.draw do
  get 'foo/index'

  resources :foos, only: :index
end
