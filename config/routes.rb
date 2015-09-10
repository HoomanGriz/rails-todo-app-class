Rails.application.routes.draw do

  # get 'tasks/index'

  # get 'tasks/show'

  # get 'tasks/new'

  # get 'tasks/create'

  # get 'tasks/destroy'

  post '/tasks', to: 'tasks#create', as: :create_task

  resources :tasks, shallow: true

  root 'tasks#index'

end
