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
    include CldrRegexpCollection

    def initialize(options)
      @country_code = options.fetch(:country_code) { }
      @country_code_attribute = options.fetch(:country_code_attribute) { :country_alpha2 }

      super
    end

    def validate_each(record, attribute, value)
      alpha2 = @country_code || record.send(@country_code_attribute)
      regexp = regexp_for_country_alpha2(alpha2)
      return unless regexp

      unless regexp.match(value.to_s)
        record.errors.add(attribute, I18n.t('errors.messages.invalid_zipcode', value: value))
      end
    end
  end
end

ActiveModel::Validations::ZipcodeValidator = ValidatesZipcode::Validator
