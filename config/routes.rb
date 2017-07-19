Rails.application.routes.draw do
  
  root 'static_pages#home'
  get '/about',     to:  'static_pages#about'
  get '/contact',   to:  'static_pages#contact'
  get '/bit_rate',  to: 'static_pages#bit_rate'
  get '/file_size', to: 'static_pages#file_size'
  get '/what_is_4k', to: 'static_pages#what_is_4k'
  get '/hdr',        to: 'static_pages#hdr'
  get '/i_vs_p', to: 'static_pages#interlaced_vs_progressive'
  
end
