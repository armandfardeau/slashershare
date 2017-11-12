#!/bin/bash
curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm install ruby-2.4.2
rvm use 2.4.2
bundle install
rails reload
open http://localhost:3000
rails s