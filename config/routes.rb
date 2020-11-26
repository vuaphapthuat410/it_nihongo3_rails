Rails.application.routes.draw do
  root 'static_pages#home'
  resources :books
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  as :user do
    get "signin" => "devise/sessions#new"
    get "signup" => "devise/registrations#new"
    delete "logout" => "destroy_user_session_path"
    get 'users/show'
  end
  get "books" => "books"
end
