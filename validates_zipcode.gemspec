# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'validates_zipcode/version'

Gem::Specification.new do |s|
  s.name          = 'validates_zipcode'
  s.version       = ValidatesZipcode::VERSION
  s.authors       = ['David Gil']
  s.email         = ['dgilperez@gmail.com']
  s.summary       = 'Localizable zipcode validation for Rails.'
  s.description   = 'Adds zipcode validation methods to ActiveModel considering different country zipcode formats.'
  s.homepage      = 'https://github.com/dgilperez/validates_zipcode'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = %w[lib]

  s.required_ruby_version = '>= 3.3'

  s.add_dependency 'activemodel', '>= 8.0'

  s.metadata['changelog_uri'] = "#{s.homepage}/blob/master/CHANGELOG.md"
  s.metadata['source_code_uri'] = s.homepage
  s.metadata['rubygems_mfa_required'] = 'true'
end
