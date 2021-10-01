<h1>Api Wrapper using Challonge Api</h1>

Create your account here at https://challonge.com/ and generate your own token

<h2>Configuration</h2>

Install rest client 

$ gem 'rest-client', '~> 1.8'

and

do bundle install

or

$ gem install rest-client -v 1.8.0

<h2> Usage </h2>

<h3>Request</h3>

result = RestClient::Request.execute(
           method, url, payload, headers 'Accept' => 'application/json',
          'Authorization-Type' => 'v1',
          'Content-Type' => 'application/vnd.api+json',
          'Authorization' => [Your api token])

View more about rest client?   

https://github.com/rest-client/rest-client

<h3>Client</h3>

get_tournaments
          
show_tournament
          
tournament_participants 
          
show_tournament_participant
          
get_tournament_matches
          

