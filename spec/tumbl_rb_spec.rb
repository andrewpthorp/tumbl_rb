require 'spec_helper'

describe TumblRb do

  describe ".new" do
    it "should be a TumblRb::Client" do
      TumblRb.new.should be_a TumblRb::Client
    end
  end

end
