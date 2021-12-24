Rails.application.routes.draw do
 
  root 'pages#home'  
  get 'about', to: 'pages#about'

 
  #resources :articles, only:[:index,:new , :show,:create,:edit,:update]
  resources :articles
  delete 'articles/:id', to: 'articles#destroy', as: 'delete_article'
end
