require 'spec_helper'

describe TumblRb::Client::Blogs do

  before do
    @blog = "andrewpthorp.tumblr.com"
    @client = TumblRb::Client.new
  end

  describe ".info" do
    it "should return blog info" do
      stub_request(:get, "http://api.tumblr.com/v2/blog/#{@blog}/info").to_return(:body => fixture("info.json"))
      info = @client.info(@blog)
      info.should_not be_empty
    end
  end

  describe ".avatar" do
    it "should return blog avatar" do
      stub_request(:get, "http://api.tumblr.com/v2/blog/#{@blog}/avatar").to_return(:body => fixture("avatar.json"))
      avatar = @client.avatar(@blog)
      avatar.should_not be_empty
    end
  end

  describe ".posts" do
    it "should return all posts" do
      stub_request(:get, "http://api.tumblr.com/v2/blog/#{@blog}/posts").to_return(:body => fixture("posts.json"))
      posts = @client.posts(@blog)
      posts.should_not be_empty
    end
  end

end
