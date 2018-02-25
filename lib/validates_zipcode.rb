# frozen_string_literal: true
require 'validates_zipcode/railtie' if defined?(Rails)
require 'validates_zipcode/cldr_regex_collection'
require 'validates_zipcode/validator'
require 'validates_zipcode/helper_methods'
require 'validates_zipcode/version'
require 'validates_zipcode/zipcode'

module ValidatesZipcode
  def self.valid?(zipcode, country_alpha2, options = {})
    ValidatesZipcode::Zipcode.new(options.merge(zipcode: zipcode, country_alpha2: country_alpha2)).valid?
  end
end
