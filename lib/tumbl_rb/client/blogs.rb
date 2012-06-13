module TumblRb
  class Client
    module Blogs

      # Get the info of a blog
      #
      # @param [String, Hash] blog to get information for
      #
      # @return [Hashie::Mash]
      # @example
      #   TumblRb.info("andrewpthorp")
      def info(blog)
        get("/v2/blog/#{Blog.new blog}/info", {}, false, false)
      end

      # Get the avatar of a blog
      #
      # @param [String, Hash] blog to get avatar from
      # @param [Integer] size of integer (16, 24, 30, 40, 48, 64, 96, 128, 512)
      #
      # @return [Hashie::Mash]
      # @example
      #   TumblRb.avatar("andrewpthorp", 512)
      def avatar(blog, size=64)
        get("/v2/blog/#{Blog.new blog}/avatar/#{size}", {}, false, false)
      end

      # Get the followers of a blog
      #
      # @param [String, Hash] blog to get followers of
      # @param [Integer] number of results (1-20, defaults 20)
      # @param [Integer] result to start at (defaults 0)
      #
      # @return [Hashie::Mash]
      # @example
      #   TumblRb.followers("andrewpthorp", 20, 0)
      def followers(blog, limit=20, offset=0)
        get("/v2/blog/#{Blog.new blog}/followers", { :limit => limit, :offset => offset }, false, false)
      end

    end
  end
end
