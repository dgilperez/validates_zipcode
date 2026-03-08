# frozen_string_literal: true
module ValidatesZipcode
  class Zipcode
    include CldrRegexpCollection

    def initialize(args = {})
      @zipcode                = args.fetch(:zipcode)
      @country_alpha2         = args.fetch(:country_alpha2)
      @excluded_country_codes = args.fetch(:excluded_country_codes, [])
      @format                 = args.fetch(:format, false)
    end

    def valid?
      return true if @excluded_country_codes.include?(@country_alpha2)
      return false unless valid_country_alpha2?
      return true unless regexp

      zipcode = @format ? formatted_zip : @zipcode
      !!(regexp =~ zipcode)
    end
    alias_method :validate, :valid?

    def format
      raise InvalidZipcodeError, "invalid zipcode #{formatted_zip} for country #{@country_alpha2.to_s.upcase}" unless valid?

      formatted_zip
    end

    private

    def regexp
      @regexp ||= regexp_for_country_alpha2(@country_alpha2)
    end

    # ISO 3166-1 alpha-2 codes are exactly 2 uppercase ASCII letters.
    # Anything longer or shorter (e.g. "UKXXXXX", "G", "12") is not a
    # valid country code and should fail validation immediately.
    def valid_country_alpha2?
      @country_alpha2.to_s.match?(/\A[A-Za-z]{2}\z/)
    end

    def formatted_zip
      @formatted_zip ||= Formatter.new(zipcode: @zipcode, country_alpha2: @country_alpha2).format
    end
  end
end
