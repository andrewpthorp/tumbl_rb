guard 'rspec', :version => 2 do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})                   { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^lib/tumbl_rb/(.+)\.rb$})          { |m| "spec/tumbl_rb/#{m[1]}_spec.rb" }
  watch(%r{^lib/tumbl_rb/client/(.+)\.rb$})   { |m| "spec/tumbl_rb/client/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')                { "spec" }
end

