Rails.application.routes.draw do
    # resources :tasks
#CRUD
get   "tasks",            to: "tasks#index", as: :tasks
#C
get   "tasks/new",        to: "tasks#new", as: :new
post  "tasks",            to: "tasks#create"
#R

get   "tasks/:id",        to: "tasks#show", as: :task
#U
get    "tasks/:id/edit",  to: "tasks#edit", as: :edit
patch  "tasks/:id",       to: "tasks#update"
#D
delete "tasks/:id",       to: "tasks#destroy", as: :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
