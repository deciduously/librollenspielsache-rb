# Librollenspielsache-rb

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


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

You will need `librollenspielsache.so` available in your link path.  For now, clone that repo, build it, and create a `.env` file:

```sh
LD_LIBRARY_PATH=/path/to/librolenspielsache/target/release/librollenspielsache.so
```

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/librollenspielsache-rb.

