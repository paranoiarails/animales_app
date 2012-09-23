source 'https://rubygems.org'

gem 'rails', '3.2.2'
gem 'thin'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


gem 'gravatar_image_tag', '0.1.0'
gem 'paperclip', :git => 'git://github.com/thoughtbot/paperclip.git'

gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'

gem 'test-unit'

gem 'nifty-generators', '>= 0.4.0'

#gem "heroku"
#gem 'sqlite3-ruby', '1.2.5', :group => :development
# for deployment on Heroku
gem "heroku"
group :development, :test do
  gem 'rspec-rails'
  gem "rails-erd"
  gem 'sqlite3'
#, '1.3.5', :require => 'sqlite3'
end

group :test do
    gem 'rspec'
    gem 'webrat', '0.7.1'
    gem 'factory_girl_rails', '1.0'
 
    gem 'ZenTest', "4.6.0"
    gem 'autotest'
    gem 'autotest-rails'
end

group :production do
  gem 'pg'
  gem 'thin'
end


#http://stackoverflow.com/questions/7300532/blueprint-css-rails-3-1-help
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'therubyracer'
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'




gem "mocha", :group => :test
