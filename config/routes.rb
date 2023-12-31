Rails.application.routes.draw do
  root to: 'movies#find'
  get '/movies', to: 'movies#find', as: 'find'
  get '/movies/:id', to: 'movies#find_by_id', as: 'find_by_id'
  get 'testing', to: 'movies#method_test'
  post '/movies', to: 'movies#create', format: :json
end
