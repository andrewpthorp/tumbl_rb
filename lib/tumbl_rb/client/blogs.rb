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
      def avatar(blog, size)
        get("/v2/blog/#{Blog.new blog}/avatar/#{size}", false, false)
      end

    end
  end
end
