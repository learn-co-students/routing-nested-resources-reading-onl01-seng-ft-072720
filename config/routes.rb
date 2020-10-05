Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show] do
    #this is a nested rousource route. Authors have_many posts
    #nesting show and index under authors
    resources :posts, only: [:show, :index]
    end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

end
