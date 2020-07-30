Rails.application.routes.draw do
 root 'home#index'
 get 'about', to:'pages#about'
 get 'contact' , to:'pages#contact'
 get 'gallery' , to:'pages#gallery'
 get 'new' , to:'pages#new'
 get 'courses/show' , to:'courses#show'

 resources :courses
 post 'courses' , to:'courses#new'
 post 'courses/:id/edit' , to:'courses#edit'
 resources :books
  get 'books/addbooks' , to:'books#addbooks'
 post 'books' , to:'books#addbooks'

 get 'course_book_add/cbooks' , to:'course_book_add#cbooks'

 post 'courses/show.:id' , to:'courses#show'



end
