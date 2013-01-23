Curtain::Application.routes.draw do
  constraints(Subdomain) do
    root :to => 'curtain#index'
  end

  root :to =>  "home#index"
end
