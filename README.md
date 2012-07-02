# Tumbl_rb
Simple Ruby wrapper for the Tumblr v2 API

[![Build Status](https://secure.travis-ci.org/andrewpthorp/tumbl_rb.png)](http://travis-ci.org/andrewpthorp/tumbl_rb) [![Dependency Status](https://gemnasium.com/andrewpthorp/tumbl_rb.png)](https://gemnasium.com/andrewpthorp/tumbl_rb)

## Installation
    gem install 'tumbl_rb'

## Documentation
    none yet

## Examples

### Global Configuration
```ruby
TumblRb.configure do |config|
    config.consumer_oauth_key   = "1234567890" # API KEY
    config.timeout              = 5 # OPEN/READ TIMEOUT
    config.open_timeout         = 5 # OPEN TIMEOUT
end
```

### Get a Blog's info
```ruby
TumblRb.info("andrewpthorp")
```

### Get a Blog's avatar
```ruby
TumblRb.avatar("andrewpthorp")
```

### Get Blog Posts
```ruby
TumblRb.posts("andrewpthorp")
```

### Get all posts of a specific type (text, quote, link, answer, video, audio, photo, chat)
```ruby
TumblRb.posts("andrewpthorp", :type => "link")
```

### Get a specific post
```ruby
TumblRb.posts("andrewpthorp", :id => 123456789)
```

**Different types bring back different responses. To check them out, [visit the documentation](http://www.tumblr.com/docs/en/api/v2)**

## Version
This gem supports the methods of the Tumblr API that do not require OAuth. This may change before v3 of the Tumblr API, and will definitely change after v3 of the Tumblr API.

## Inspiration
Tumbl_rb was heavily inspired by [octokit][octokit] and [sqoot][sqoot]. Reading through
and understanding those projects was crucial to understanding the anatomy of a gem (specifically
an API wrapper gem). Thanks!

[octokit]: https://github.com/pengwynn/octokit
[sqoot]: https://github.com/causemetric/sqoot

## Copyright
Copyright (c) 2012 Andrew Thorp. See [LICENSE][license] for details.

[license]: https://github.com/andrewpthorp/tumbl_rb/blob/master/LICENSE
