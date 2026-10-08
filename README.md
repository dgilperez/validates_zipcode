# ValidatesZipcode [![CI](https://github.com/dgilperez/validates_zipcode/actions/workflows/ci.yml/badge.svg)](https://github.com/dgilperez/validates_zipcode/actions/workflows/ci.yml) [![Gem Version](https://badge.fury.io/rb/validates_zipcode.svg)](https://badge.fury.io/rb/validates_zipcode)

Adds zipcode / postal code validation support to Rails (ActiveModel), considering postal code formats for mostly every country.

``ValidatesZipcode`` currently support **233 country codes**. Regex data taken from several sources, being the main source the [CLDR](http://unicode.org/cldr/trac/browser/tags/release-27-d05/common/supplemental/postalCodeData.xml) database (release 27, around 159). Any other country's postal code will validate without errors.

``ValidatesZipcode`` is tested on Ruby 3.2 to 4.0 with ActiveModel 7.1 to 8.1 and Rails main. The gemspec still allows Rails >= 4.2 and Ruby >= 2.4, but those older versions are no longer tested; try the v0.2 series for Rails 3.2 and Ruby 1.9.3.

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'validates_zipcode'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install validates_zipcode

## Usage

### With ActiveModel::Validations

```ruby
validates_zipcode :zipcode

validates :zipcode, zipcode: true
```

``ValidatesZipcode`` expects the model to have an attribute called ``country_alpha2`` to contain the country code.
You can provide your own country_code using ``:country_code`` option, or specify which attribute contains this information
using ``:country_code_attribute`` option.

```ruby
validates :zipcode, zipcode: { country_code: :es }

validates :zipcode, zipcode: { country_code_attribute: :my_country_code_column }
```

#### Error Messaging

If you need to localize the error message, just add this to your I18n locale file:

```yaml
errors:
  messages:
    invalid_zipcode: Your zipcode error message.
```

You can override this on a per-model basis by passing in a ``:message`` key with the validation:

```ruby
validates :zipcode, zipcode: { message: 'Your per-model zipcode error message.' }
```

### Without ActiveModel::Validations

```ruby
ValidatesZipcode.valid?('93108', 'ES')
# => true
```

### Formatting

This gem can also be used for formatting zipcodes according to country specific rules.

```ruby
ValidatesZipcode.format('Sw1A 2aA', 'UK')
# => 'SW1A 2AA'
```

If the zipcode is not valid an exception is raised.

```ruby
ValidatesZipcode.format('Sw1A 2aA', 'FR')
# => raises ValidatesZipcode::InvalidZipcodeError
```

At the moment not every country is supported. See [lib/validates_zipcode/formatter.rb](lib/validates_zipcode/formatter.rb) to find all available countries.

### Test data

In order to generate test data, we suggest using the [regexp-examples gem](https://github.com/tom-lord/regexp-examples)
This dependency will allow you to create examples as follows:

```ruby
require "regexp-examples"

ValidatesZipcode::CldrRegexpCollection::ZIPCODES_REGEX[:ES].examples

# => ["00000", "00001", "00002", "00003", ..., "44443", "44444"]

ValidatesZipcode::CldrRegexpCollection::ZIPCODES_REGEX[:ES].random_example

# => "27072"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

Also, you should read and follow our [Code of Conduct](https://github.com/dgilperez/validates_zipcode/blob/master/CODE_OF_CONDUCT.md).

## Contributors

To see the generous people who have contributed code, take a look at the [contributors list](http://github.com/dgilperez/validates_zipcode/contributors).

## Maintainers

* [David Gil](http://github.com/dgilperez)

## License

Copyright (c) 2014 David Gil Pérez, released under the MIT license
