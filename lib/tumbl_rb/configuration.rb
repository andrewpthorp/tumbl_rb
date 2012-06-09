require 'tumbl_rb/version'

module TumblRb
  module Configuration
    VALID_OPTIONS_KEYS = [
      :login,
      :password,
      :proxy,
      :oauth_token,
      :user_agent,
      :auto_traversal,
      :per_page].freeze

    DEFAULT_USER_AGENT     = "TumblRb Ruby Gem #{TumblRb::VERSION}".freeze
    DEFAULT_AUTO_TRAVERSAL = false

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
      self.login          = nil
      self.password       = nil
      self.proxy          = nil
      self.oauth_token    = nil
      self.user_agent     = DEFAULT_USER_AGENT
      self.auto_traversal = DEFAULT_AUTO_TRAVERSAL
    end
  end
end
