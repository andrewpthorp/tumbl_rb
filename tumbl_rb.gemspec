# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tumbl_rb/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'tumbl_rb'
  s.version     = TumblRb::VERSION

  s.authors     = ['Andrew Thorp']
  s.email       = ['andrewpthorp@gmail.com']
  s.description = %q{Simple wrapper for the tumblr v2 API.}
  s.summary     = s.description
  s.homepage    = 'http://github.com/andrewpthorp/tumbl_rb'

  s.add_development_dependency 'json'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'yard'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
end
