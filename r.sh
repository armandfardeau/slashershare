#!/bin/bash
curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm
rvm install ruby-2.4.2
rvm use 2.4.2
gem install bundler
bundle install --without production
spring stop
rails db:environment:set RAILS_ENV=development
rails reload
open http://localhost:3000
rails s
