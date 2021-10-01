module Challonge
  class Errors
    
    def self.map(code)
      case code
      when 401
        return 'Unauthorized request. Please try again!'
      when 406
        return 'Not Acceptable'
      when 415
        return 'Unsupported Media Type'
      when 400
        return 'Bad Request'
      else
        return 'Service Unavailable. Please try again!'
      end
    end

  end
end