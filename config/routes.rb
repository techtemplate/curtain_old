Curtain::Application.routes.draw do
  root :to => 'curtain#index'

  match "/home" => "home#index"
end


