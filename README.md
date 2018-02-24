# Crossbone::MatrixExtension
A little ruby gem that adds (hopefully) useful operations to the Vector and Matrix classes of ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'crossbone-matrix_extension'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install crossbone-matrix_extension

## Usage

This gem adds some (hopefully) useful methods to the Vector and Matrix classes in matrix.rb. To have them available simply require the gem:
```ruby
require 'matrix'
require 'crossbone/matrix_extension'
````

### Vector
The gem includes the new following methods to the `Vector` class
* `manhattan`: Used to calculate manhattan/taxicab distance between to vectors in space. More info at [Taxicab Distance](https://en.wikipedia.org/wiki/Taxicab_geometry).
* `chessboard`: Used to calculate chessboard/Chebyshev distance between to vectors in space. More infot at [Chebyshev Distance](https://en.wikipedia.org/wiki/Chebyshev_distance).

### Matrix
The gem include the new following methods to the `Matrix` class:
* `bitwise_multiplication`: Returns a Matrix which contains in every cell the multiplication of the two cells at the corresponding position in the operand matrices. 
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ivo-forlin/crossbone-matrix_extension. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Crossbone::MatrixExtension project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ivo-forlin/crossbone-matrix_extension/blob/master/CODE_OF_CONDUCT.md).