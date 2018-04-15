source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.6'

gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'rolify'
gem 'foundation-rails'
gem 'autoprefixer-rails'
gem 'ice_cube'
gem 'recurring_select'
gem "font-awesome-rails"
gem 'chart-js-rails'
gem 'jquery-minicolors-rails'
gem "select2-rails"
gem 'carrierwave'
gem "fog-aws"
gem 'seed_dump'
gem 'prawn'
gem 'prawn-table'
gem 'foundation-datepicker-rails'
gem "nested_form"

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'sqlite3'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'pg', '~> 0.18'
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
