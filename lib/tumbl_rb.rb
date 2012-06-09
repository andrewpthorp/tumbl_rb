require 'tumbl_rb/configuration'
require 'tumbl_rb/client'

module TumblRb
  extend Configuration
  class << self
    # Alias for TumblRb::Client.new
    #
    # @return [TumblRb::Client]
    def new(options={})
      TumblRb::Client.new(options)
    end

    # Delegate to TumblRb::Client.new
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def respond_to?(method, include_private=false)
      new.respond_to?(method, include_private) || super(method, include_private)
    end
  end
end
