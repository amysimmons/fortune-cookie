Rails.application.routes.draw do
  root :to => 'fortunes#home'
  resources :fortunes, :only => [:create, :new, :show]
end
