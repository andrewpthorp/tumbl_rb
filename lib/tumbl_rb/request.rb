require 'multi_json'

module TumblRb
  module Request
    def get(path, options={}, raw=false)
      request(:get, path, options, raw)
    end

    private

    def request(method, path, options, raw)
      response = connection(raw).send(method) do |request|
        request.url(path, options)
      end

      if raw
        response
      else
        response.body
      end
    end

  end
end
