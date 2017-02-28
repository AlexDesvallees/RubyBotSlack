source "https://rubygems.org"

gem 'slack-notifier'
gem 'rack', '~> 1.6.5'
gem 'sinatra'
gem 'foreman'

group :development do
  if RUBY_VERSION >= "2.0.0"
    gem "pry-byebug"
  else
    gem "pry-debugger"
  end

  gem "benchmark-ips"
end

group :test do
  gem "rake",     "~> 12.0"
  gem "rspec",    "~> 3.5.0"
  gem "rubocop",  "~> 0.35", require: false

  gem "string-scrub" if RUBY_VERSION <= "1.9.3"
end