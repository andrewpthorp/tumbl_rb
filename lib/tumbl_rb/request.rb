require 'multi_json'

module TumblRb
  module Request
    def get(path, options={}, raw=false, include_meta=false)
      request(:get, path, options, raw, include_meta)
    end

    private

    def request(method, path, options, raw, include_meta)
      response = connection(raw).send(method) do |request|
        request.url(path, options)
      end

      if raw
        response
      else

        if include_meta
          response.body
        else
          response.body.response
        end
      end
    end

  end
end
