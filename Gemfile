# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"
gem 'slack-ruby-bot'
gem 'puma'
gem 'sinatra'
gem 'dotenv'
gem 'faye-websocket'
gem 'dentaku', '~> 2.0', '>= 2.0.7'

group :development, :test do
  gem 'rake'
  gem 'foreman'
end

group :test do
  gem 'rspec'
  gem 'rack-test'
  gem 'vcr'
  gem 'webmock'
end