# Pogo-Rails

PogoScript adapter for the Rails asset pipeline. Also adds support to use PogoScript to respond to JavaScript requests (use .js.pogo views).

## Installation

Add pogo-rails to your Gemfile:

    gem 'pogo-rails'

If you are precompiling your assets (with rake assets:precompile) before running your application in production, you might want add it to the assets group to prevent the gem being required in the production environment.

    group :assets do
      gem 'pogo-rails'
    end

## Running tests

    $ bundle install
    $ bundle exec rake test

If you need to test against local gems, use Bundler's gem :path option in the Gemfile.
