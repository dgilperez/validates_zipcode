# frozen_string_literal: true
require 'spec_helper'

# NOTE: Spain has the full case specs.
#       Do not apply all checks to all countries for suite speed.
describe ValidatesZipcode, '#validate_each' do
  TEST_DATA.each do |country_code, values|
    context country_code do
      context 'validates with valid zipcodes' do
        values[:valid].each do |zipcode|
          it zipcode do
            record = build_record(zipcode, country_code)
            zipcode_should_be_valid(record)
          end
        end
      end

      context 'does not validate with invalid zipcodes' do
        values[:invalid].each do |zipcode|
          display_name = zipcode.nil? ? 'nil' : zipcode.blank? ? 'blank' : zipcode

          it display_name.to_s do
            record = build_record(zipcode, country_code)
            zipcode_should_be_invalid(record, nil)
          end
        end
      end
    end
  end

  context 'unknown country' do
    it 'does not add errors with a any zipcode' do
      record = build_record('A1J2Z9', 'ZZ')
      zipcode_should_be_valid(record)
    end
  end

  context 'Excluded existing country code' do
    context 'Panama' do
      it 'validates with a valid zipcode' do
        %w[0800 6369].each do |zipcode|
          record = build_record(zipcode, 'PA')
          zipcode_should_be_valid(record, excluded_country_codes: %w[PA])
        end
      end

      it 'validates with an invalid zipcode' do
        %w[10800 369 A341].each do |zipcode|
          record = build_record(zipcode, 'PA')
          zipcode_should_be_valid(record, excluded_country_codes: %w[PA])
        end
      end
    end
  end

  context 'with formatting' do
    it 'is true with a valid zipcode for a given country code' do
      zipcode_should_be_valid(build_record('28 108', 'ES'), format: true)
      zipcode_should_be_invalid(build_record('28 108', 'ES'), nil)
      zipcode_should_be_invalid(build_record('28 108', 'ES'), nil, format: false)

      zipcode_should_be_valid(build_record('V2r-1c8', 'CA'), format: true)
      zipcode_should_be_invalid(build_record('V2r-1c8', 'CA'), nil)
      zipcode_should_be_invalid(build_record('V2r-1c8', 'CA'), nil, format: false)
    end
  end
end

describe ValidatesZipcode, '.valid?' do
  context 'Spain' do
    it 'is true with a valid zipcode for a given country code' do
      expect(ValidatesZipcode.valid?('93108', 'ES')).to eq(true)
    end

    it 'is false with an invalid zipcode for a given country code' do
      ['1234', '12345-12345', 'D0D0D0', 'invalid_zip'].each do |zipcode|
        expect(ValidatesZipcode.valid?(zipcode, 'ES')).to eq(false)
      end
    end

    it "is true with an unknown country code -  we don't have all!" do
      expect(ValidatesZipcode.valid?('12345', 'ZZ')).to eq(true)
    end

    it "is true with an excluded country code -  we don't want those to fail and nil is hairy" do
      expect(ValidatesZipcode.valid?('XXXX!!!XXXX', 'PA', excluded_country_codes: %w[PA])).to eq(true)
    end
  end

  context 'with formatting' do
    it 'is true with a valid zipcode for a given country code' do
      expect(ValidatesZipcode.valid?('28 108', 'ES', format: true)).to eq(true)
      expect(ValidatesZipcode.valid?('28 108', 'ES', format: false)).to eq(false)

      expect(ValidatesZipcode.valid?('V2r-1c8', 'CA', format: true)).to eq(true)
      expect(ValidatesZipcode.valid?('V2r-1c8', 'CA', format: false)).to eq(false)
    end
  end
end

describe ValidatesZipcode, '.format' do
  it 'formats valid zipcodes' do
    expect(ValidatesZipcode.format('Ka9 2dj', 'UK')).to eq('KA9 2DJ')
  end

  it 'raises for invalid zipcodes' do
    expect { ValidatesZipcode.format('KA9 1tr', 'DE') }.to raise_error(ValidatesZipcode::InvalidZipcodeError)
  end
end

def zipcode_should_be_valid(record, options = {})
  ValidatesZipcode::Validator.new(options.merge(attributes: :zipcode)).validate(record)

  expect(record.errors).to be_empty
end

def zipcode_should_be_invalid(record, _zipcode, options = {})
  ValidatesZipcode::Validator.new(options.merge(attributes: :zipcode)).validate(record)

  expect(record.errors.size).to eq 1
  expect(record.errors.messages[:zipcode]).to include 'is invalid'
end

def zipcode_should_be_invalid_with_custom_message(record, _zipcode, options = {})
  custom_message = 'is really wrong'
  ValidatesZipcode::Validator.new(options.merge(attributes: :zipcode, message: custom_message)).validate(record)

  expect(record.errors.size).to eq 1
  expect(record.errors.messages[:zipcode]).to include custom_message
end

def build_record(zipcode, country_alpha2)
  ValidationDummyClass.new.tap do |object|
    object.country_alpha2 = country_alpha2
    object.zipcode = zipcode
  end
end

class ValidationDummyClass
  include ::ActiveModel::Validations
  attr_accessor :zipcode, :country_alpha2

  def self.name
    'TestClass'
  end
end
