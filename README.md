# Tumbl_rb
Simple Ruby wrapper for the Tumblr v2 API

[![Build Status](https://secure.travis-ci.org/andrewpthorp/tumbl_rb.png)](http://travis-ci.org/andrewpthorp/tumbl_rb) [![Dependency Status](https://gemnasium.com/andrewpthorp/tumbl_rb.png)](https://gemnasium.com/andrewpthorp/tumbl_rb)

## Installation
    none yet

## Documentation
    none yet

## Examples
### Get a Blog's info
```ruby
TumblRb.info("andrewpthorp")
=> #<Hashie::Mash meta=#<Hashie::Mash msg="OK" status=200> response=#<Hashie::Mash blog=#<Hashie::Mash ask=false description="Full stack web developer from Lynchbrg, VA." likes=1 name="andrewpthorp" posts=4 title="Andrew Thorp" updated=1339377610 url="http://andrewpthorp.tumblr.com/">>>
```

## Inspiration
Tumbl_rb was heavily inspired by [octokit][octokit] and [sqoot][sqoot]. Reading through
and understanding those projects was crucial to understanding the anatomy of a gem (specifically
an API wrapper gem). Thanks!

[octokit]: https://github.com/pengwynn/octokit
[sqoot]: https://github.com/causemetric/sqoot

## Copyright
Copyright (c) 2012 Andrew Thorp. See [LICENSE][license] for details.

[license]: https://github.com/andrewpthorp/tumbl_rb/blob/master/LICENSE
