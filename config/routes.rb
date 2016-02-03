Rails.application.routes.draw do
  root :to => 'fortunes#home'
  resources :fortunes, :only => [:create, :new, :show, :index]
  get '/about' => 'pages#about'
  get '/random' => 'fortunes#random'
end
