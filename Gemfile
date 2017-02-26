source "https://rubygems.org"

ruby "2.4.0"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "active_interaction"
gem "pg", "~> 0.18"
gem "puma", "~> 3.0"
gem "rails", "~> 5.0.1"
gem "react-rails"
gem "jquery-rails"
gem "sass-rails", "~> 5.0"
gem "turbolinks", "~> 5"
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "uglifier", ">= 1.3.0"

source "https://rails-assets.org" do
  gem 'rails-assets-bootstrap'
end

group :development, :test do
  gem "byebug", platform: :mri
end

group :development do
  gem "annotate"
  gem "better_errors"
  gem "binding_of_caller"
  gem "listen", "~> 3.0.5"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "spring"
end
