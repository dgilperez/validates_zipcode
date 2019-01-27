# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'validates_zipcode/version'

Gem::Specification.new do |s|
  s.name          = 'validates_zipcode'
  s.version       = ValidatesZipcode::VERSION
  s.authors       = ['David Gil']
  s.email         = ['dgilperez@gmail.com']
  s.summary       = 'Localizable zipcode validation for Rails.'
  s.description   = 'Adds zipcode validation methods to ActiveModel considering different country zipcode formats.'
  s.homepage      = 'http://github.com/dgilperez/validates_zipcode'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 1.9.3'

  s.add_dependency 'activemodel', '>= 3.2.0'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake', '~> 12.2.1'
  s.add_development_dependency 'rspec'
end
