require 'faraday_middleware'
require 'faraday/response/raise_tumbl_rb_error'

module TumblRb
  # @private
  module Connection
    private

    def connection(raw=false)

      options = {
        :proxy => proxy,
        :ssl => { :verify => false },
        :url => api_url
      }

      options.merge!(:params => { :api_key => consumer_oauth_key}) if oauthed?

      connection = Faraday.new(options) do |builder|
        builder.request :url_encoded

        builder.use Faraday::Response::RaiseTumblRbError
        unless raw
          builder.use FaradayMiddleware::Mashify
          builder.use FaradayMiddleware::ParseJson
        end

        builder.adapter adapter
      end

      connection
    end
  end
end
