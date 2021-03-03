# frozen_string_literal: true
require 'validates_zipcode/railtie' if defined?(Rails)
require 'validates_zipcode/cldr_regex_collection'
require 'validates_zipcode/invalid_zipcode_error'
require 'validates_zipcode/validator'
require 'validates_zipcode/helper_methods'
require 'validates_zipcode/version'
require 'validates_zipcode/zipcode'
require 'validates_zipcode/formatter'

module ValidatesZipcode
  def self.valid?(*args)
    build_zipcode(*args).valid?
  end

  def self.format(*args)
    build_zipcode(*args).format
  end

  def self.build_zipcode(zipcode, country_alpha2, options = {})
    ValidatesZipcode::Zipcode.new(options.merge(zipcode: zipcode, country_alpha2: country_alpha2))
  end
end
