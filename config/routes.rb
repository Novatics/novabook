Rails.application.routes.draw do
  root 'notes#visitor'

  get '/editor' => 'notes#editor'
  post '/editor' => 'notes#update'
end
