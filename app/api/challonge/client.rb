module Challonge
  class Client  

    def self.get_tournaments
      response = Request.call('get', '/tournaments')
    end

    def self.show_tournament(url)
      response = Request.call('get', "/tournaments/#{url}")
    end

    def self.get_tournament_participants(url)
      response = Request.call('get', "/tournaments/#{url}/participants")
    end

    def self.show_tournament_participant(url, participant_id)
      response = Request.call('get', "/tournaments/#{url}/participants/#{participant_id}")
    end

    def self.get_tournament_matches(url)
      response = Request.call('get', "/tournaments/#{url}/matches")
    end

    def self.create_tournaments(data)
      response = Request.call('post', '/tournaments', data)
    end

    def self.update_tournament(url, data)
      response = Request.call('put', "/tournaments/#{url}", data)
    end

    def self.delete_tournament(url)
      response = Request.call('delete', "/tournaments/#{url}")
    end

  end
end