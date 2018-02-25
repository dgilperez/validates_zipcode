# frozen_string_literal: true
module ActiveModel
  module Validations
    module HelperMethods
      def validates_zipcode(*attr_names)
        validates_with ZipcodeValidator, _merge_attributes(attr_names)
      end
    end
  end
end
