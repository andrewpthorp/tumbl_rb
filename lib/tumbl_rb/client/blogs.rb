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
        get("/v2/blog/#{Blog.new blog}/info", {}, false)
      end


      # Get the avatar of a blog
      #
      # @param [String, Hash] blog
      #
      # @return [Hashie::Mash]
      # @example
      #   TumblRb.avatar("andrewpthorp")
      def avatar(blog)
        get("/v2/blog/#{Blog.new blog}/avatar", {}, false)
      end

      # Get the posts of a blog
      #
      # @param [String, Hash] blog
      # @param [String] post type
      #
      # @return [Hashie::Mash]
      # @example
      #   TumblRb.posts("andrewpthorp", "text")
      def posts(blog, options={})
        url = "/v2/blog/#{Blog.new blog}/posts"

        if !options[:type].nil?
          url += "/#{options[:type]}"
        end

        get(url, options, false)
      end

    end
  end
end
