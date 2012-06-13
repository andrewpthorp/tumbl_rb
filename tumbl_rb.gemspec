# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tumbl_rb/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'tumbl_rb'
  s.version     = TumblRb::VERSION
  s.platform    = Gem::Platform::RUBY

  s.authors     = ['Andrew Thorp']
  s.email       = ['andrewpthorp@gmail.com']
  s.homepage    = 'http://github.com/andrewpthorp/tumbl_rb'
  s.summary     = %q{Simple wrapper for the tumblr v2 API.}
  s.description = <<-EOF
    Tumblr is a "feature rich and free blog hosting platform."
    Tumbl_rb is a ruby wrapper around v2 of the tumblr API.
  EOF

  s.add_runtime_dependency 'addressable', '~> 2.2'
  s.add_runtime_dependency 'faraday', '~> 0.8'
  s.add_runtime_dependency 'faraday_middleware', '~> 0.8'
  s.add_runtime_dependency 'hashie', '~> 1.2'
  s.add_runtime_dependency 'multi_json', '~> 1.3'
  s.add_runtime_dependency 'oauth', '~> 0.4'

  s.add_development_dependency 'json'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'growl'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'markdown'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
end
