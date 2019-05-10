source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.7', '>= 5.0.7.2'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'devise', '~> 4.6', '>= 4.6.2'
gem 'bootstrap', '~> 4.3', '>= 4.3.1'


group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'capybara', '~> 3.18'
  gem 'database_cleaner', '~> 1.7'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

#gem "rspec-core", :github => "rspec/rspec-core"
#gem "rspec-expectations", :github => "rspec/rspec-expectations"
#gem "rspec-mocks", :github => "rspec/rspec-mocks"
#gem "rspec-support", :github => "rspec/rspec-support"
#gem "rspec-rails", :github => "rspec/rspec-rails"