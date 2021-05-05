source "https://rubygems.org"

ruby "2.4.2"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "active_interaction"
gem "bcrypt"
gem "graphql"
gem "jquery-rails"
gem "pg", "~> 0.18"
gem "puma", "~> 3.0"
gem "rack-cors"
gem "rails", "~> 5.2.4"
gem "react-rails", "~> 1.10.0"
gem "sass-rails", "~> 5.0"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"

source "https://rails-assets.org" do
  gem "rails-assets-bootstrap", "4.0.0.alpha.6"
end

group :development, :test do
  gem "byebug", platform: :mri
end

group :development do
  gem "annotate"
  gem "better_errors"
  gem "binding_of_caller"
  gem "graphiql-rails"
  gem "listen", "~> 3.0.5"
  gem "pry-rails"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
