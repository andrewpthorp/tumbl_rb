require 'spec_helper'

describe Faraday::Response do
  before do
    @client = TumblRb::Client.new
  end

  {
    401 => TumblRb::Unauthorized,
    404 => TumblRb::NotFound
  }.each do |status, exception|

    context "when HTTP status is #{status}" do
      before do
        stub_request(:get, "http://api.tumblr.com/v2/blog/andrewpthorp.tumblr.com/info").to_return(:status => status)
      end

      it "should raise exception #{exception}" do
        lambda do
          @client.info("andrewpthorp")
        end.should raise_error(exception)
      end
    end

  end

end
