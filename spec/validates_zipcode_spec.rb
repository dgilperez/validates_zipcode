require 'spec_helper'

describe ValidatesZipcode, '#validate_each' do
  context "Spain" do
    it 'does not add errors with a valid zipcode' do
      record = build_record('93108', "ES")
      zipcode_should_be_valid(record)
    end

    it 'adds errors with an invalid Zipcode' do
      ['1234', '12345-12345', 'D0D0D0', 'invalid_zip'].each do |zipcode|
        record = build_record(zipcode, 'ES')
        zipcode_should_be_invalid(record, zipcode)
      end
    end
  end

  context "USA" do
    it 'does not add errors with a valid zipcode' do
      record = build_record('93108', "US")
      zipcode_should_be_valid(record)
      [12345, '12345', '12345-1234'].each do |zipcode|
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

  context "Argentina" do
    it 'does not add errors with a valid zipcode' do
      record = build_record('C1424CHN', "AR")
      zipcode_should_be_valid(record)
    end

    it 'adds errors with an invalid Zipcode' do
      ['1234', '12345', 'D0D0D0', 'invalid_zip'].each do |zipcode|
        record = build_record(zipcode, 'AR')
        zipcode_should_be_invalid(record, zipcode)
      end
    end
  end

  context "Chile" do
    it 'does not add errors with a valid zipcode' do
      ['123-1233', '000-0000', '1234567'].each do |zipcode|
        record = build_record(zipcode, "CL")
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

  context "Australia and New Zeland" do
    it 'does not add errors with a valid zipcode' do
      ["AU", "NZ"].each do |code|
        record = build_record('9310', code)
        zipcode_should_be_valid(record)
      end
    end

    it 'adds errors with an invalid Zipcode' do
      ["AU", "NZ"].each do |code|
        ['C1424CHN', '12345', 'invalid_zip'].each do |zipcode|
          record = build_record(zipcode, code)
          zipcode_should_be_invalid(record, zipcode)
        end
      end
    end
  end

  context "Canada" do
    it 'does not add errors with a valid zipcode' do
      record = build_record('A1J2Z9', 'CA')
      zipcode_should_be_valid(record)
    end

    it 'adds errors with an invalid Zipcode' do
      ['C1424CHN', '12345', 'D0D0D0', 'invalid_zip'].each do |zipcode|
        record = build_record(zipcode, 'CA')
        zipcode_should_be_invalid(record, zipcode)
      end
    end
  end

  context 'Serbia' do
    it 'validates with a valid zipcode' do
      record = build_record('21000', 'RS')
      zipcode_should_be_valid(record)
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('2100', 'RS')
      zipcode_should_be_invalid(record)
    end
  end

  context "unknown country" do
    it 'does not add errors with a any zipcode' do
      record = build_record('A1J2Z9', 'ZZ')
      zipcode_should_be_valid(record)
    end
  end

  context 'Lithuania' do
    it 'validates with a valid zipcode' do
      record = build_record('LT-0110', 'LT')
      zipcode_should_be_valid(record)
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('21006', 'LT')
      zipcode_should_be_invalid(record)
    end
  end

  context 'Moldova' do
    it 'validates with a valid zipcode' do
      record = build_record('MD2001', 'MD')
      zipcode_should_be_valid(record)
    end

    it 'does not validate with an invalid zipcode' do
      record = build_record('MD-2100', 'MD')
      zipcode_should_be_invalid(record)
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
      zipcode_should_be_invalid(record)
    end
  end
end

describe ValidatesZipcode, '.valid?' do
  context "Spain" do
    it 'does not add errors with a valid zipcode' do
      expect(ValidatesZipcode.valid?('93108', 'ES')).to eq(true)
    end

    it 'adds errors with an invalid Zipcode' do
      ['1234', '12345-12345', 'D0D0D0', 'invalid_zip'].each do |zipcode|
        expect(ValidatesZipcode.valid?(zipcode, 'ES')).to eq(false)
      end
    end
  end
end

def zipcode_should_be_valid(record)
  ValidatesZipcode::Validator.new(attributes: :zipcode).validate(record)

  expect(record.errors).to be_empty
end

def zipcode_should_be_invalid(record, zipcode = "invalid_zip")
  ValidatesZipcode::Validator.new(attributes: :zipcode).validate(record)

  expect(record.errors.size).to eq 1
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
