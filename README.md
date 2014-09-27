# ValidatesZipcode [![Build Status](https://secure.travis-ci.org/dgilperez/validates_zipcode.png)](https://travis-ci.org/dgilperez/validates_zipcode) [![Code Climate](https://codeclimate.com/github/dgilperez/validates_zipcode/badges/gpa.svg)](https://codeclimate.com/github/dgilperez/validates_zipcode) [![Gem Version](https://badge.fury.io/rb/validates_zipcode.svg)](http://badge.fury.io/rb/validates_zipcode)

Add zipcode validation support to Rails (ActiveModel), considering different zipcode country formats.

``ValidatesZipcode`` currently support **159 countries**. Regex data taken from several sources, mainly from the [CLDR](common/supplemental/postalCodeData.xml) database. Any other country's zipcode will validate without errors.

``ValidatesZipcode`` works for Rails 3 & 4 and Ruby >= 1.9.3.

## Installation

Add this line to your application's Gemfile:

    gem 'validates_zipcode'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install validates_zipcode

## Usage

    validates_zipcode :zipcode

    validates :zipcode, zipcode: true

``ValidatesZipcode`` expects the model to have an attribute called ``country_alpha2`` to contain the country code.
You can provide your own country_code using ``:country_code`` option, or specify which attribute contains this information
using ``:country_code_attribute`` option.

    validates :zipcode, zipcode: { country_code: :es }

    validates :zipcode, zipcode: { country_code_attribute: :my_country_code_column }

If you need to localize the error message, just add this to your I18n locale file:

    errors:
      messages:
        invalid_zipcode: Your zipcode error message.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

To see the generous people who have contributed code, take a look at the [contributors list](http://github.com/dgilperez/validates_zipcode/contributors).

## Maintainers

* [David Gil](http://github.com/dgilperez)

## License

Copyright (c) 2014 David Gil Pérez, released under the MIT license
