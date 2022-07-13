# Changelog

All notable changes to this project will be documented in this file.

## 0.5.1

- Fixes Mongolia postal codes, thanks to ~ @lucasfcunha

## 0.5.0

- Pass `format: true` option to the `validates_zipcode` or the constructor to attempt for format a given code using the (uncomplete) list of formatters by country. This process will happen before the validation takes place, dealing with case sensitive formats and whitespace, amongst others. This option is false by default for backwards compatibility. ~ @chloe-meister
- Fixed unconsistent behaviour by which the `ValidatesZipcode.format` and `ValidatesZipcode::Formatter.new(..).format` where formatting an invalid code, the former, and raising a validity error, the latter. ~ @chloe-meister

## 0.4.0

**HEADS UP**: While I don't think this update would break any system for anyone, many formats where revisited to make them more loose or strict, potentially rendering your data invalid, particularly in edge cases or with data that was already incorrect in the first place and not flagges as such. I recommend you check your data with the new version in case these validations are critical to you. I am not releasing this as a 1.0 because there are no breaking changes in the API though. See PR #54 for more details.

- Many regexps where modified to include recent changes in postal services, fix issues, narrow down formats that where unnecessary broad, allow for some looser cases such as optional whitespaces and making many of them case insensitive and removing countries with no postal codes - See PR #54. Thanks to ~ @ojsdude with some help from @dgilperez
- Allow the gem to generate test data from the formatters. See README ~ @ojsdude
- Officially support Ruby 3 and Rails 6.1

## 0.3.3

- Fixes AR regex

## 0.3.2

- Adds formatter for CA ~ @devthiago

## 0.3.1

- Removes forbidden combinations in the Netherlands ~ @gerard76

## 0.3.0

- Adds zipcode formatting feature ~ @aiomaster
- Drops support for EoL Rails < 4.2 and Ruby < 2.4. ~ @dgilperez

## 0.2.5

- Allows for a custom message passed to the validator ~ @andychongyz

## 0.2.4

- Fixes LV postal code format

## 0.2.3

- Fixes MU postal code format ~ @thrasherDGK

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
