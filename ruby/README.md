# Cucumber::Json::Schema

This repository contains JSON Schemas for the Cucumber JSON format.

Tools that consume Cucumber JSON can use these schemas to validate that a document is valid.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cucumber-json-schema'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cucumber-json-schema

## Usage

You can get the schema using this code.

```ruby
require 'cucumber/json/schema'

Cucumber::Json::Schema.schema
# => { ... }
```

## Development

After checking out the repo, run `make install` to install dependencies. Then, run `make test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

Make commands are available to help you

```bash
make install        # Install everything you need to develop

make test           # Run tests

make clean          # Cleanup what you don't need to develop in the ruby folder
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/cucumber-json-schema.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

