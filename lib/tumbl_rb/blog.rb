module TumblRb
  class Blog
    attr_accessor :hostname, :username

    def initialize(blog)
      case blog
      when String
        if blog.include?(".")
          @hostname = blog
          @username = blog.include?(".tumblr.com") ? blog.chomp(".tumblr.com") : nil
        else
          @hostname = "#{blog}.tumblr.com"
          @username = blog
        end
      when Hash
        @hostname = blog[:hostname] ||= blog[:blog]
        @username = blog[:username] ||= blog[:user]
      end
    end

    # Returns the hostname
    #
    # @return [String]
    def to_s
      @hostname
    end

    # Returns the url
    #
    # @return [String]
    def url
      "http://#{@hostname}"
    end

  end
end
