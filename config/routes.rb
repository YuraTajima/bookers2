Rails.application.routes.draw do
  
 devise_for :users
 root to: "homes#top"
 
 resource :books, only: [:index, :show, :edit, :create]
 resource :users, only: [:show, :edit]
 
 get "/homes/about" => "homes#about", as: "about"
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
