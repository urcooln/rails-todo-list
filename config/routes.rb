Rails.application.routes.draw do
  root 'homepage#index'

  # Add routes below this line
  get '/tasks' => 'tasks#index'
  post '/tasks' => 'tasks#create'
  delete '/tasks/:id' => 'tasks#destroy'
  put '/tasks/:id/mark_complete' => 'tasks#mark_complete'
  put '/tasks/:id/mark_active' => 'tasks#mark_active'
  # Add routes above this line

  # Redirect all other paths to the index page, taken over by AngularJS
  get '*path' => 'homepage#index'
end
