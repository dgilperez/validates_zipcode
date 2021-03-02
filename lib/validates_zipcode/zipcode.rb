# frozen_string_literal: true
module ValidatesZipcode
  class Zipcode
    include CldrRegexpCollection

    def initialize(args = {})
      @zipcode                = args.fetch(:zipcode)
      @country_alpha2         = args.fetch(:country_alpha2)
      @excluded_country_codes = args.fetch(:excluded_country_codes, [])
    end

    def valid?
      return true if @excluded_country_codes.include?(@country_alpha2)
      return true unless regexp
      !!(regexp =~ @zipcode)
    end
    alias_method :validate, :valid?

    def format
      raise InvalidZipcodeError, "invalid zipcode #{@zipcode} for country #{@country_alpha2.to_s.upcase}" unless valid?
      Formatter.new(zipcode: @zipcode, country_alpha2: @country_alpha2).format
    end

    def generate
      values[:valid].sample
    end

    private

    def regexp
      @regexp ||= regexp_for_country_alpha2(@country_alpha2)
    end

    def values
      @values ||= values_for_country_alpha2(@country_alpha2)
    end
  end
end
