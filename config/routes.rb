Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "tasks" => "tasks#index"
  get "tasks/new" => "tasks#new"
  get "tasks/:id" => "tasks#show", as: :task
  get "tasks/:id/edit" => "tasks#edit", as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  post "tasks" => "tasks#create"
  # patch "tasks/:id", => "tasks#update"
  delete "tasks/:id" => "tasks#destroy"
end
