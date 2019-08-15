# Changelog

All notable changes to this project will be documented in this file.

## 0.2.2

- Fixes LT postal code format ~ @tmeckhoff

## 0.2.1

- Fixes NI postal code format ~ Daniel Olivares

## 0.2.0

- Dropped support for Rails 3.2, 4.0, 4.1 and Ruby 1.9.3 and Ruby less than Ruby 2.3. This means those versions or combinations may still work for you, but they will not be tested nor receive support.
- Added support for Rails 6.0. Yeehaw!
- Support for Taiwan 5-digit codes, thanks to ~ @ThomasChiesa

## 0.1.1

- Relaxes UK / GB regex to support codes without whitespace. Fixes backward compatibility breaking in 0.0.20. ~ Thanks to @tom-lord

## 0.1.0

- Dropped support for Rails 4.0 and 4.1 and for older minor Ruby 2 versions. This means those versions or combinations will not be tested, they may still work but will not receive support. This change could potentially break some apps in the future. Also, gem is stable enough to merit a minor version. Hence, 0.1.0 is here.
- Added support for Rails 5.1 and 5.2 ~ @Onumis

## 0.0.20

- Merge UK and GB regex, using official regex provided by gob.uk. Breaks compatibility for codes without whitespace ~ @Onumis @dgilperez

## 0.0.19

- Fixes JP and IE formats, thanks to ~ @timokleemann

## 0.0.18

- Adds support for `excluded_country_codes` in the validation setup.
- Remove support for UAE, not reliable sources found, assume not used.

## 0.0.17

- Updates support for Luxembourg postal codes ~ @rivsc

## 0.0.16

- Support for old / new Israel postal codes ~ @EricLarch

## 0.0.15

- Support for old / new Lithuania postal codes ~ @EricLarch

## 0.0.14

- Support for Rails5 ~ @dgilperez

## 0.0.13

- Support for new Korea postal codes ~ @adlersantos

## 0.0.12

- Sweden whitespace made optional ~ @radubatori

## 0.0.11

- Fix Brazil zipcode ~ @pedrosfdcarneiro

## 0.0.10

- Support zip+6 for the USA ~ @dimroc

## 0.0.9

- Added Code of Conduct from Contributor Covenant ~ @dgilperez
- Fixed Regex for Greece thanks to @Masa331

## 0.0.8

- Added ValidatesZipcode.valid?(zipcode, country_alpha2) for usage outside models ~ @dgilperez
