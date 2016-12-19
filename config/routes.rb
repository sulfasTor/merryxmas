Rails.application.routes.draw do 
 
  match '/merriers', to: 'merriers#new', via: 'get'
  resources "merriers", only: [:new, :create]

  root to: "welcome#index"
end
