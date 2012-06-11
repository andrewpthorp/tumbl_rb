module TumblRb
  class Client
    module Blogs

      # Get the info of a blog
      #
      # @param [String, Hash] the blog, hostname, or username
      #
      # @return [Hashie::Mash]
      # @example
      #   TumblRb.info("andrewpthorp")
      def info(blog)
        get("/v2/blog/#{Blog.new blog}/info", {}, false)
      end

    end
  end
end
