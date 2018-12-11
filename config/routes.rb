Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
root 'pages#home'

resources: articles

get 'pages/about', to: 'pages#about'

get 'pages/faq', to: 'pages#faq'

get 'pages/links', to: 'pages#links'

get 'pages/contact', to: 'pages#contact'

end
