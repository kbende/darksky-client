# Darksky

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/darksky`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'darksky'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install darksky

## Configuration

Create an file initializer

```ruby
Darksky.configure do |c|
  c.api_key = "YOUR API KEY"
end
```

## Usage

Retrieve current weather data by lat/lng coordinates

    $ forecast = Darksky.forecast(lat,lng)

Retrieve historical weather data by lat/lng coordinates

    $ forecast = Darksky.forecast(lat,lng, epoch)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rspec spec` to run the tests. You can also run `bundle console` for an interactive prompt that will allow you to experiment.


## Contributing

1. Fork it ( https://github.com/kbende/darksky-client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

