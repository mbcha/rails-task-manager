Rails.application.routes.draw do
  # list all
  get '/', to: 'tasks#index', as: :tasks

  # create one
  get 'new', to: 'tasks#new', as: :new_task
  post '/', to: 'tasks#create'

  # update
  get 'task/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'task/:id', to: 'tasks#update'

  # find one
  get 'task/:id', to: 'tasks#show', as: :task

  # delete
  delete 'task/:id', to: 'tasks#destroy'
end
