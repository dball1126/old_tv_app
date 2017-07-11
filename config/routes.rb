Rails.application.routes.draw do
  
  root 'static_pages#home'
  get '/about',     to:  'static_pages#about'
  get '/contact',   to:  'static_pages#contact'
  get '/bit_rate',  to: 'static_pages#bit_rate'
  get '/file_size', to: 'static_pages#file_size'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
