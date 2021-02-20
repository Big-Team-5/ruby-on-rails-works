# README

Install  Ruby On Rails on Ubuntu
Install WSL 2
Clone the repository
    git clone https://github.com/Big-Team-5/ruby-on-rails-works.git
    cd ruby-on-rails-works
Check your Ruby version
        ruby -v
The ouput should start with something like ruby 2.5.1
        rvm install 2.5.1
Install dependencies
    Using Bundler 
        install Bundler
Configuring Git 
        git config --global color.ui true
        git config --global user.name "YOUR NAME"
        git config --global user.email "YOUR@EMAIL.com"
        ssh-keygen -t rsa -b 4096 -C "YOUR@EMAIL.com"
Installing Rails
        gem install rails
Setting Up A Database
        sudo apt-get install mysql-server mysql-client libmysqlclient-dev

Initialize the database
        rails db:create db:migrate db:seed
rails server
        rails s
GEMFILE:
        gem 'devise', '~> 4.7', '>= 4.7.3'
        gem 'rails', '~> 5.2.4', '>= 5.2.4.5'
        gem 'mysql2', '>= 0.4.4', '< 0.6.0'
        gem 'puma', '~> 3.11'
        gem 'sass-rails', '~> 5.0'
        gem 'uglifier', '>= 1.3.0'
        gem 'coffee-rails', '~> 4.2'
        gem 'turbolinks', '~> 5'
        gem 'jbuilder', '~> 2.5'
        gem 'bootsnap', '>= 1.1.0', require: false
    group :development do
        gem 'web-console', '>= 3.3.0'
        gem 'listen', '>= 3.0.5', '< 3.2'
        gem 'spring'
        gem 'spring-watcher-listen', '~> 2.0.0'
        gem 'capistrano', '~> 3.10', require: false
        gem 'capistrano-rails', '~> 1.4', require: false
        gem 'capistrano-bundler', '>= 1.1.0'
        gem 'rvm1-capistrano3', require: false
        gem 'capistrano3-puma'
    end
    group :test do
        gem 'capybara', '>= 2.15'
        gem 'selenium-webdriver'
        gem 'chromedriver-helper'
    end

        gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
        gem 'jquery-rails', '~> 4.4'
        gem "font-awesome-rails" 
        gem 'bootstrap-sass', '~> 3.4.1'
        gem 'sassc-rails', '>= 2.1.0'
        gem 'rails_admin', '~> 2.0'

        gem 'toastr-rails'
        gem 'cancancan'
        
# ruby-on-rails-works