# frozen_string_literal: true
require 'spec_helper'

describe ValidatesZipcode::Formatter, '#format' do
  context 'Canada' do
    it { check_format('CA', 'l3b3z6' => 'L3B 3Z6') }
    it { check_format('ca', 'V2r-1c8' => 'V2R 1C8') }
    it { check_format(:ca, 'g9a 5w1' => 'G9A 5W1') }
  end

  context 'Czech' do
    it { check_format('CZ', '12000' => '120 00') }
    it { check_format(:cz, '721 00' => '721 00') }
  end

  context 'Germany' do
    it { check_format('DE', 1309 => '01309') }
  end

  context 'Netherlands' do
    it { check_format('NL', '1000ap' => '1000 AP') }
    it { check_format('nl', '9104-BR' => '9104 BR') }
    it { check_format(:nl, '6832_AM' => '6832 AM') }
  end

  context 'UK' do
    it { check_format('UK', 'CB224RG' => 'CB22 4RG') }
    it { check_format('UK', 'Sw1A 2aA' => 'SW1A 2AA') }
    it { check_format('GB', 'id11qd' => 'ID1 1QD') }
  end

  context 'US' do
    it { check_format('US', '221	62	–	10	10' => '22162-1010') }
    it { check_format('US', '22162' => '22162') }
    it { check_format('US', '22162 1010' => '22162-1010') }
  end

  context 'MT' do
    it { check_format('MT', 'GZR1020' => 'GZR 1020') }
  end

  def check_format(country, formatting)
    from_zip, to_zip = formatting.first
    expect(::ValidatesZipcode::Formatter.new(zipcode: from_zip, country_alpha2: country).format).to eq(to_zip)
  end
end
