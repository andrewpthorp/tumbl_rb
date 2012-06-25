unless ENV['CI']
  require 'simplecov'

  SimpleCov.start do
    add_filter "/spec"
  end
end

require 'tumbl_rb'
require 'rspec'
require 'webmock/rspec'

def fixture(file)
  File.new(File.expand_path("../fixtures", __FILE__) + "/" + file)
end
