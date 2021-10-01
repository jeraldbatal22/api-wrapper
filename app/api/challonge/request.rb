module Challonge
  class Request

    TOKEN = ENV['API_TOKEN']
    BASE_URL = 'https://api.challonge.com/v2'

    def self.call(http_method, endpoint, data = "")
      
      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}",
        payload: data.to_json,
        headers:{
          'Accept' => 'application/json',
          'Authorization-Type' => 'v1',
          'Content-Type' => 'application/vnd.api+json',
          'Authorization' => "#{TOKEN}"
        }
      )
        
      { code: result.code, status: 'Success', data: JSON.parse(result) }
      
      rescue RestClient::ExceptionWithResponse => error
        puts data.to_json
        puts 'gagagagagagagagagag'
      { code: error.http_code, status: error.message, data:  Challonge::Errors.map(error.http_code) }

    end
  end
end