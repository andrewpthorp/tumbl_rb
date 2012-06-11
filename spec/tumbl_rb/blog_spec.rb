require 'spec_helper'

describe TumblRb::Blog do

  context "when passed a standard tumblr domain" do

    before do
      @blog = TumblRb::Blog.new("andrewpthorp.tumblr.com")
    end

    it "should set the hostname" do
      @blog.hostname.should == "andrewpthorp.tumblr.com"
    end

    it "should set the username" do
      @blog.username.should == "andrewpthorp"
    end

    it "should render the hostname as string" do
      @blog.to_s.should == "andrewpthorp.tumblr.com"
    end

    it "should render the url" do
      @blog.url.should == "http://andrewpthorp.tumblr.com"
    end

  end

  context "when passed a custom domain" do

    before do
      @blog = TumblRb::Blog.new("thechangelog.com")
    end

    it "should set the hostname" do
      @blog.hostname.should == "thechangelog.com"
    end

    it "should not set the username" do
      @blog.username.should be_nil
    end

  end

  context "when passed a username" do

    before do
      @blog = TumblRb::Blog.new("andrewpthorp")
    end

    it "should set the hostname" do
      @blog.hostname.should == "andrewpthorp.tumblr.com"
    end

    it "should set the username" do
      @blog.username.should == "andrewpthorp"
    end

  end

  context "when passed a hash" do
    before do
      @blog = TumblRb::Blog.new({:username => "andrewpthorp", :hostname => "thechangelog.com"})
    end

    it "should set the hostname" do
      @blog.hostname.should == "thechangelog.com"
    end

    it "should set the username" do
      @blog.username.should == "andrewpthorp"
    end
  end

end
