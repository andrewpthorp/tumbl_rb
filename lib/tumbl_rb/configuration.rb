require 'faraday'
require 'tumbl_rb/version'

module TumblRb
  module Configuration
    VALID_OPTIONS_KEYS = [
      :adapter,
      :api_version,
      :proxy,
      :consumer_oauth_key,
      :timeout,
      :open_timeout,
      :user_agent].freeze

    DEFAULT_ADAPTER         = Faraday.default_adapter
    DEFAULT_API_VERSION     = 2
    DEFAULT_USER_AGENT      = "TumblRb Ruby Gem #{TumblRb::VERSION}".freeze
    DEFAULT_TIMEOUT         = 10

    attr_accessor(*VALID_OPTIONS_KEYS)

    def self.extended(base)
      base.reset
    end

    def configure
      yield self
    end

    def options
      VALID_OPTIONS_KEYS.inject({}){|o,k| o.merge!(k => send(k)) }
    end

    def reset
      self.adapter                = DEFAULT_ADAPTER
      self.api_version            = DEFAULT_API_VERSION
      self.consumer_oauth_key     = nil
      self.proxy                  = nil
      self.user_agent             = DEFAULT_USER_AGENT
      self.timeout                = DEFAULT_TIMEOUT
      self.open_timeout           = DEFAULT_TIMEOUT
    end
  end
end
