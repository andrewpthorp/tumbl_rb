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
    it "should be set to http://api.tumblr.com/v2" do
      TumblRb::Client.new.api_url.should == "http://api.tumblr.com/v2"
    end
  end

end
