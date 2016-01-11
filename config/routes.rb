Rails.application.routes.draw do
  root :to => 'fortunes#home'
  resources :fortunes, :only => [:create, :new, :show]
  get '/about' => 'pages#about'
end
