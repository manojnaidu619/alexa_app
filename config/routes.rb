Rails.application.routes.draw do
  root 'home#posting'
  post '/', to: 'home#posting'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
