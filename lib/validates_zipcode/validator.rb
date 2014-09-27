# Usage:
#
# class User < ActiveModel
#   validates :postalcode, zipcode: true
#
#   # Required country_alpha2 attribute
#   def country_alpha2
#     country.alpha2
#   end
# end
#

require 'active_model'
require 'active_model/validator'

module ValidatesZipcode
  class Validator < ActiveModel::EachValidator
    # using country alpha2 code as key
    ZIPCODES_REGEX = {
      ES: /\A\d{5}\z/,
      AR: /\A([A-HJ-TP-Z]{1}\d{4}[A-Z]{3}|[a-z]{1}\d{4}[a-hj-tp-z]{3})\z/,
      CL: /\A[0-9]{3}[-]?[0-9]{4}\z/,
      NZ: /\A\d{4}\z/,
      AU: /\A\d{4}\z/,
      US: /\A\d{5}(-\d{4})?\z/,
      CA: /\A[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}\z/
      # CA: /\A[ABCEGHJKLMNPRSTVXY]\d[ABCEGHJKLMNPRSTWVXYZ]\d[ABCEGHJKLMNPRSTWVXYZ]\d\z/
    }

    def initialize(options)
      @country_code = options.fetch(:country_code) { }
      @country_code_attribute = options.fetch(:country_code_attribute) { :country_alpha2 }

      super
    end

    def validate_each(record, attribute, value)
      alpha2 = @country_code || record.send(@country_code_attribute)
      alpha2 = alpha2.to_s.upcase.to_sym
      regexp = ZIPCODES_REGEX[alpha2]
      return unless regexp

      unless regexp.match(value.to_s)
        record.errors.add(attribute, I18n.t('errors.messages.invalid_zipcode', value: value))
      end
    end
  end
end

ActiveModel::Validations::ZipcodeValidator = ValidatesZipcode::Validator
