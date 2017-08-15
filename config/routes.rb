Rails.application.routes.draw do
  resources :review_posts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'uh_em#index'
  get '/uh_em/index'
  get '/uh_em/search_list'
  get '/uh_em/mymenu'

  get '/jido/maps'
  post '/jido/maps' => 'mylocation#create'
  get '/jido/search'
  post 'jido/search' => 'parse#search_create'
  get '/parse/doc'

# /models/sign_in
# /models/sign_out
# /models/password/new
# /models/password/edit
# /models/password
# /models/cancel
# /models/sign_up
# /models/edit



end
