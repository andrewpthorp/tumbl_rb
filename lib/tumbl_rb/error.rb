module TumblRb

  # Custom error class for rescuing from all Tumblr errors
  class Error < StandardError; end

  # 401 HTTP Status Code
  class Unauthorized < Error; end

  # 404 HTTP Status Code
  class NotFound < Error; end

end
