Rails.application.routes.draw do
  
  get 'users/show'
  get 'users/edit'
 devise_for :users
 root to: "homes#top"
 
 resource :books, only: [:new, :index, :show]
 resource :users, only: [:show, :edit]
 
 get "/homes/about" => "homes#about", as: "about"
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
