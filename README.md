# Rollenspielsache-rb

WIP - there's like nothing actually here yet.

Currently wrapping [librollenspielsache 0.1.2](https://crates.io/crates/librollenspielsache/0.1.2).

[![Gem Version](https://badge.fury.io/rb/librollenspielsache-rb.svg)](https://badge.fury.io/rb/librollenspielsache-rb)

Ruby bindings for [`librollenspielsache`](https://crates.io/crates/librollenspielsache).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'librollenspielsache-rb'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install librollenspielsache-rb

## Usage

Coming soon?

## Development

### Prerequisites

Before using you need to download and successfully run `make all` in [`librollenspielsache`](https://github.com/deciduously/librollenspielsache).  Then, you need to add a file in this project root called `.env` with the following contents:

```
LD_LIBRARY_PATH="${HOME}/path/to/librollenspielsache/dist"
```

Adjust to where you build the shared library.

### Run

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests or `rake lint` to run RuboCop. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

For now, this expects a pre-compiled `librollenspielsache.so` available in `ext/`.  One is provided with the repo.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/deciduously/librollenspielsache-rb.

