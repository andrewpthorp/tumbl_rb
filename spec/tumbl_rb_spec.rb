require 'spec_helper'

describe TumblRb do

  describe ".new" do
    it "should be a TumblRb::Client" do
      TumblRb.new.should be_a TumblRb::Client
    end
  end

  describe ".respond_to?" do
    it "should be true if method exists" do
      TumblRb.respond_to?(:new, true).should be_true
    end

    it "should be false if the method does not exist" do
      TumblRb.respond_to?(:rollins, true).should be_false
    end
  end

  describe ".delegate" do
    it "should delegate missing methods to TumblRb::Client" do
      TumblRb.api_url.should == TumblRb::Client.new.api_url
    end
  end

end
