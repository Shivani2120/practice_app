Rails.application.routes.draw do
    
  get 'subject/create'
  resources :teachers do
    resources :subjects
  end

  resources :students

  resources :courses
  
end
