# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shortinator/version'

Gem::Specification.new do |spec|
  spec.name          = "shortinator"
  spec.version       = Shortinator::VERSION
  spec.authors       = ["Adam Bird"]
  spec.email         = ["adam.bird@gmail.com"]
  spec.summary       = %q{Library for shortening urls}
  spec.description   = %q{Works with companion web project to redirect where required}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency('mongo', '~> 2.0')
  spec.add_dependency('bson', '~> 4.0')
  spec.add_dependency('base62', '1.0.0')
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
