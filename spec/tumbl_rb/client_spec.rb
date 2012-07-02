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

  describe "timeout" do
    before do
      @blog = "andrewpthorp.tumblr.com"
    end

    it "should raise an error when a timeout happens" do
      client = TumblRb::Client.new(:timeout => 0, :open_timeout => 0)
      lambda {
        client.info(@blog)
      }.should raise_error
    end

    it "should not raise an error when a timeout doesn't happen" do
      stub_request(:get, "http://api.tumblr.com/v2/blog/#{@blog}/info").to_return(:body => fixture("info.json"))
      client = TumblRb::Client.new
      lambda {
        client.info(@blog)
      }.should_not raise_error
    end
  end
end
