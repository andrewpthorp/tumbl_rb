module TumblRb

  class Client
    attr_accessor(*Configuration::VALID_OPTIONS_KEYS)

    def initialize(options={})
      options = TumblRb.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

    # Provides the URL for accessing the API
    #
    # @return [String]
    def api_url
      "http://api.tumblr.com/v2"
    end

  end

end
