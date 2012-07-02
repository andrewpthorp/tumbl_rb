require 'spec_helper'

describe TumblRb::Client do

  describe "#new" do
    it "should set valid options" do
      client = TumblRb::Client.new(:proxy => :rack)
      client.proxy.should == :rack
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
      client = TumblRb::Client.new
      client.api_url.should == "http://api.tumblr.com"
    end
  end

  describe "#oauthed?" do
    it "should be false with a nil consumer_oauth_key" do
      client = TumblRb::Client.new
      client.oauthed?.should be_false
    end

    it "should be true when consumer_oauth_key is not nil" do
      client = TumblRb::Client.new(:consumer_oauth_key => "1234567890")
      client.oauthed?.should be_true
    end
  end

end
