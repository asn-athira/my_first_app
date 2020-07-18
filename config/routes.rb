Rails.application.routes.draw do
 root 'courses#index'
 get 'courses/new', to:'courses#new'
 get 'about', to:'pages#about'
 get 'contact' , to:'pages#contact'
  get 'courses' , to:'pages#courses'
  get 'gallery' , to:'pages#gallery'
  get 'new' , to:'pages#new'


end
