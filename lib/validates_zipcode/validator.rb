# frozen_string_literal: true
# Usage:
#
# class User < ActiveModel
#   validates :postalcode, zipcode: true
#
#   # Default country_alpha2 attribute.
#   # You can change it using :country_code_attribute option
#   def country_alpha2
#     country.alpha2
#   end
# end
#

require 'active_model'
require 'active_model/validator'

module ValidatesZipcode
  class Validator < ActiveModel::EachValidator
    def initialize(options)
      @country_code           = options.fetch(:country_code, nil)
      @country_code_attribute = options.fetch(:country_code_attribute, :country_alpha2)
      @excluded_country_codes = options.fetch(:excluded_country_codes, [])

      super
    end

    def validate_each(record, attribute, value)
      alpha2  = @country_code || record.send(@country_code_attribute)
      options = { zipcode: value.to_s,
                  country_alpha2: alpha2,
                  excluded_country_codes: @excluded_country_codes }

      unless ValidatesZipcode::Zipcode.new(options).valid?
        record.errors.add(attribute, :invalid_zipcode, message: I18n.t('errors.messages.invalid_zipcode',
          value: value,
          default: 'Zipcode is invalid'))
      end
    end
  end
end

ActiveModel::Validations::ZipcodeValidator = ValidatesZipcode::Validator
