<h1>Api Wrapper using Challonge Api</h1>

Create your account here at https://challonge.com/ and generate your own token

<h2>Configuration</h2>

Install rest client 

$ gem 'rest-client', '~> 2.1'

and

do bundle install

or

$ gem install rest-client -v 2.1.0

<h2> Usage </h2>

<h3>Request</h3>

result = RestClient::Request.execute(
           
           method,
           
           url,
           
           payload,
           
           headers 'Accept' => 'application/json',
           
          'Authorization-Type' => 'v1',
          
          'Content-Type' => 'application/vnd.api+json',
          
          'Authorization' => [Your api token]
          
          )

View more about rest client?   

https://github.com/rest-client/rest-client

<h3>Client</h3>

get_tournaments
          
show_tournament
          
tournament_participants 
          
show_tournament_participant
          
get_tournament_matches
          
<h3>Routes</h3>

Available  routes

get '/tournaments', to: 'tournaments#index'

get '/tournaments/:url', to: 'tournaments#show'

post '/tournaments/', to: 'tournaments#create'

put '/tournaments/:url', to: 'tournaments#update'

delete '/tournaments/:url', to: 'tournaments#destroy'

get '/tournaments/:url/participants', to: 'tournaments#get_participants'

get '/tournaments/:url/participants/:participant_id', to: 'tournaments#show_participant'

get '/tournaments/:url/matches', to: 'tournaments#get_matches'

Note: I use Postman to test my api wrapper, you can use any avaible testing source to this api wrapper.
