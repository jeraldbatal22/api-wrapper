Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tournaments
      get '/tournaments/:url/participants', to: 'tournaments#get_participants'
      get '/tournaments/:url/participants/:participant_id', to: 'tournaments#show_participant'
      get '/tournaments/:url/matches', to: 'tournaments#get_matches'
    end
  end
 
end
