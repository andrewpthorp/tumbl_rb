require 'spec_helper'

describe TumblRb::Client do

  describe "#new" do
    it "should set valid options" do
      client = TumblRb::Client.new(:proxy => "some_proxy")
      client.proxy.should == "some_proxy"
    end

    it "should ignore invalid options" do
      lambda {
        client = TumblRb::Client.new(:foo => "bar")
        client.foo
      }.should raise_error
    end
  end

  describe "#api_url" do
    it "should be set to http://api.tumblr.com" do
      TumblRb::Client.new.api_url.should == "http://api.tumblr.com"
    end
  end

  describe "#oauthed?" do
    it "should be false with a nil oauth_token" do
      TumblRb::Client.new.oauthed?.should be_false
    end

    it "should be true when oauth_token is not nil" do
      TumblRb::Client.new(:oauth_token => "1234567890").oauthed?.should be_true
    end
  end

end
