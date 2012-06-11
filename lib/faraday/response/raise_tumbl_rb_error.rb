require 'faraday'
require 'multi_json'

# @api private
module Faraday
  class Response::RaiseTumblRbError < Response::Middleware
    def on_complete(response)
      case response[:status].to_i
      when 401
        raise TumblRb::Unauthorized, error_message(response)
      when 404
        raise TumblRb::NotFound, error_message(response)
      end
    end

    def error_message(response)
      message = if (body = response[:body]) && !body.empty?
        if body.is_a?(String)
          body = MultiJson.load(body, :symbolize_keys => true)
        end
        ": #{body[:error] || body[:message] || ''}"
      else
        ''
      end
      "#{response[:method].to_s.upcase} #{response[:url].to_s}: #{response[:status]}#{message}"
    end
  end
end
