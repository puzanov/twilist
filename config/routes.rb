Twilist::Application.routes.draw do
  #resources :tweets
  #get "home/index"
  root :to => "home#index"
  match 'bla', :to => 'home#bla'
end
