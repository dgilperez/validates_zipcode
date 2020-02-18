# frozen_string_literal: true
require 'spec_helper'

describe ValidatesZipcode, '#validate_each' do
  context 'Argentina' do
    it 'does not add errors with a valid zipcode' do
      record = build_record('C1424CHN', 'AR')
      zipcode_should_be_valid(record)
    end

    it 'adds errors with an invalid Zipcode' do
      %w[1234 12345 D0D0D0 invalid_zip].each do |zipcode|
        record = build_record(zipcode, 'AR')
        zipcode_should_be_invalid(record, zipcode)
      end
    end
  end

  context 'Australia and New Zeland' do
    it 'does not add errors with a valid zipcode' do
      %w[AU NZ].each do |code|
        record = build_record('9310', code)
        zipcode_should_be_valid(record)
      end
    end

    it 'adds errors with an invalid Zipcode' do
      %w[AU NZ].each do |code|
        %w[C1424CHN 12345 invalid_zip].each do |zipcode|
          record = build_record(zipcode, code)
          zipcode_should_be_invalid(record, zipcode)
        end
      end
    end
  end

  context 'Brazil' do
    it 'validates with a valid zipcode' do
      ['72315', '72315-500', '72315500', '24210-325', '24210325'].each do |zipcode|
        record = build_record(zipcode, 'BR')
        zipcode_should_be_valid(record)
      end
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('723155', 'BR')
      zipcode_should_be_invalid(record, '723155')
    end
  end

  context 'Canada' do
    it 'does not add errors with a valid zipcode' do
      record = build_record('A1J2Z9', 'CA')
      zipcode_should_be_valid(record)
    end

    it 'adds errors with an invalid Zipcode' do
      %w[C1424CHN 12345 D0D0D0 invalid_zip].each do |zipcode|
        record = build_record(zipcode, 'CA')
        zipcode_should_be_invalid(record, zipcode)
      end
    end
  end

  context 'Chile' do
    it 'does not add errors with a valid zipcode' do
      ['123-1233', '000-0000', '1234567'].each do |zipcode|
        record = build_record(zipcode, 'CL')
        zipcode_should_be_valid(record)
      end
    end

    it 'adds errors with an invalid Zipcode' do
      ['1234', '12345', 'D0D0D0', 'invalid_zip', 'C1424CHN', '122-12345'].each do |zipcode|
        record = build_record(zipcode, 'CL')
        zipcode_should_be_invalid(record, zipcode)
      end
    end
  end

  context 'Czech' do
    it 'validates with a valid zipcode' do
      ['12000', '721 00'].each do |zipcode|
        record = build_record(zipcode, 'CZ')
        zipcode_should_be_valid(record)
      end
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('981 32', 'CZ')
      zipcode_should_be_invalid(record, '981 32')
    end
  end

  context 'Ireland' do
    it 'does not add errors with a valid postcode - old format' do
      ['D02 AF30', 'X91 PK81', 'V94 H2PP', 'D07 R6YE', 'D6W1234',
       'A230984', 'D00AV92', 'Y631FHK', 'A000000', 'D44N4X4'].each do |zipcode|
        record = build_record(zipcode, 'IE')
        zipcode_should_be_valid(record)
      end
    end

    it 'adds errors with an invalid Zipcode' do
      ['1234', '12345-12345', 'invalid_zip'].each do |zipcode|
        record = build_record(zipcode, 'IE')
        zipcode_should_be_invalid(record, zipcode)
      end
    end
  end

  context 'Israel' do
    it 'validates with a valid zipcode' do
      %w[1029200 880000 90001].each do |zipcode|
        record = build_record(zipcode, 'IL')
        zipcode_should_be_valid(record)
      end
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('1200', 'IL')
      zipcode_should_be_invalid(record, '1200')
    end
  end

  context 'Japan' do
    it 'validates with a valid zipcode' do
      %w[1029200 102-9200 408-0301 207-1000].each do |zipcode|
        record = build_record(zipcode, 'JP')
        zipcode_should_be_valid(record)
      end
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('1200', 'JP')
      zipcode_should_be_invalid(record, '1200')
    end
  end

  context 'Lithuania' do
    it 'validates with a valid zipcode' do
      record = build_record('LT-00110', 'LT')
      zipcode_should_be_valid(record)
      record = build_record('00110', 'LT')
      zipcode_should_be_valid(record)
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('2100', 'LT')
      zipcode_should_be_invalid(record, '2100')
      record = build_record('LT-2100', 'LT')
      zipcode_should_be_invalid(record, 'LT-2100')
      record = build_record('LT21006', 'LT')
      zipcode_should_be_invalid(record, 'LT21006')
    end
  end

  context 'Luxembourg' do
    it 'does not add errors with a valid zipcode' do
      ['L-5635', '5635'].each do |zipcode|
        record = build_record(zipcode, 'LU')
        zipcode_should_be_valid(record)
      end
    end

    it 'adds errors with an invalid Zipcode' do
      ['124', '12345-12345', 'D0D0D0', 'invalid_zip'].each do |zipcode|
        record = build_record(zipcode, 'LU')
        zipcode_should_be_invalid(record, zipcode)
      end
    end
  end

  context 'Mauritius' do
    it 'validates with a valid zipcode' do
      %w[42602 A2101 r6414].each do |zipcode|
        record = build_record(zipcode, 'MU')
        zipcode_should_be_valid(record)
      end
    end

    it 'does not validate with an invalid zipcode' do
      %w[05678 B4242].each do |zipcode|
        record = build_record(zipcode, 'MU')
        zipcode_should_be_invalid(record, zipcode)
      end
    end
  end

  context 'Moldova' do
    it 'validates with a valid zipcode' do
      record = build_record('MD2001', 'MD')
      zipcode_should_be_valid(record)
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('MD-2100', 'MD')
      zipcode_should_be_invalid(record, 'MD-2100')
    end
  end

  context 'Panama' do
    it 'validates with a valid zipcode' do
      %w[0800 6369].each do |zipcode|
        record = build_record(zipcode, 'PA')
        zipcode_should_be_valid(record)
      end
    end

    it 'does not validate with an invalid zipcode' do
      %w[10800 369 A341].each do |zipcode|
        record = build_record(zipcode, 'PA')
        zipcode_should_be_invalid(record, zipcode)
      end
    end
  end

  context 'Portugal' do
    it 'validates with a valid zipcode' do
      ['4500', '4500-250'].each do |zipcode|
        record = build_record(zipcode, 'PT')
        zipcode_should_be_valid(record)
      end
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('4500-2500', 'PT')
      zipcode_should_be_invalid(record, '4500-2500')
    end
  end

  context 'Serbia' do
    it 'validates with a valid zipcode' do
      record = build_record('21000', 'RS')
      zipcode_should_be_valid(record)
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('2100', 'RS')
      zipcode_should_be_invalid(record, '2100')
    end
  end

  context 'Slovakia' do
    it 'validates with a valid zipcode' do
      ['83102', '911 05', '094 12'].each do |zipcode|
        record = build_record(zipcode, 'SK')
        zipcode_should_be_valid(record)
      end
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('120 00', 'SK')
      zipcode_should_be_invalid(record, '120 00')
    end
  end

  context 'Spain' do
    it 'does not add errors with a valid zipcode' do
      record = build_record('93108', 'ES')
      zipcode_should_be_valid(record)
    end

    it 'adds errors with an invalid Zipcode' do
      ['1234', '12345-12345', 'D0D0D0', 'invalid_zip'].each do |zipcode|
        record = build_record(zipcode, 'ES')
        zipcode_should_be_invalid(record, zipcode)
      end
    end
  end

  context 'South Korea' do
    it 'validates with a valid zipcode' do
      ['72315', '723-150', '11011', '110-110'].each do |zipcode|
        record = build_record(zipcode, 'KR')
        zipcode_should_be_valid(record)
      end
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('723155', 'KR')
      zipcode_should_be_invalid(record, '723155')
    end
  end

  context 'Taiwan' do
    it 'validates with a valid zipcode' do
      ['833', '74144'].each do |zipcode|
        record = build_record(zipcode, 'TW')
        zipcode_should_be_valid(record)
      end
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('4329', 'TW')
      zipcode_should_be_invalid(record, '4329')
    end
  end

  %w[UK GB].each do |cc|
    context cc do
      it 'validates with a valid zipcode' do
        [
          'ID1 1QD',
          'M32 0JG',
          'NE30 1DP',
          'OX49 5NU',
          'SW1A 2AA',
          'W1K 7DA',
          'id1 1qd',
          'Sw1A 2aA',
          'id11qd',
          'SW1A2AA'
        ].each do |zipcode|
          record = build_record(zipcode, cc)
          zipcode_should_be_valid(record)
        end
      end

      it 'does not validate with an invalid zipcode' do
        [nil, '', 'nope', 'id11qd1000', '28001'].each do |zipcode|
          record = build_record(zipcode, cc)
          zipcode_should_be_invalid(record, nil)
        end
      end
    end
  end

  context 'USA' do
    it 'does not add errors with a valid zipcode' do
      record = build_record('93108', 'US')
      zipcode_should_be_valid(record)
      [12_345, '12345', '12345-1234', '12345-123456', '12345 1234', '12345 123456'].each do |zipcode|
        record = build_record(zipcode, 'US')
        zipcode_should_be_valid(record)
      end
    end

    it 'adds errors with an invalid Zipcode' do
      ['1234', '12345-12345', 'D0D0D0', 'invalid_zip'].each do |zipcode|
        record = build_record(zipcode, 'US')
        zipcode_should_be_invalid(record, zipcode)
      end
    end
  end

  context 'Nicaragua' do
    it 'validates with a valid zipcode' do
      # @see https://en.wikipedia.org/wiki/Postal_codes_in_Nicaragua
      ['11002', '11034'].each do |zipcode|
        record = build_record(zipcode, 'NI')
        zipcode_should_be_valid(record)
      end
    end

    it 'does not validate with an invalid zipcode' do
      ['1002', '111034'].each do |zipcode|
        record = build_record(zipcode, 'NI')
        zipcode_should_be_invalid(record, zipcode)
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
          zipcode_should_be_valid(record, excluded_country_codes: ['PA'])
        end
      end

      it 'validates with an invalid zipcode' do
        %w[10800 369 A341].each do |zipcode|
          record = build_record(zipcode, 'PA')
          zipcode_should_be_valid(record, excluded_country_codes: ['PA'])
        end
      end
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
      expect(ValidatesZipcode.valid?('XXXX!!!XXXX', 'PA', excluded_country_codes: ['PA'])).to eq(true)
    end
  end
end

def zipcode_should_be_valid(record, options = {})
  ValidatesZipcode::Validator.new(options.merge(attributes: :zipcode)).validate(record)

  expect(record.errors).to be_empty
end

def zipcode_should_be_invalid(record, _zipcode, options = {})
  ValidatesZipcode::Validator.new(options.merge(attributes: :zipcode)).validate(record)

  expect(record.errors.size).to eq 1
  expect(record.errors.messages[:zipcode]).to include 'Zipcode is invalid'
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
