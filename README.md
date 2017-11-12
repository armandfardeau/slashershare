# Slashershare 
![Build result](https://travis-ci.org/armandfardeau/slashershare.svg?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/armandfardeau/slashershare/badge.svg?branch=master)](https://coveralls.io/github/armandfardeau/slashershare?branch=master)

Take a look on the website [SlasherShare](https://slashershare.herokuapp.com/)

## How to install - short way

You're not afraid of copying and pasting code into your terminal, are you?

```bash
git clone https://github.com/armandfardeau/slashershare.git
cd slashershare
chmod +x r.sh
./r.sh
```
Reload page after installation and you're good to go !

## How to install - detailed way
We strongly suggest the use of ruby version manager aka rvm, to install paste the following in your terminal: 

``` bash
curl -sSL https://get.rvm.io | bash -s stable --ruby
```

* Clone this repository in your terminal: 

```bash
git clone https://github.com/armandfardeau/slashershare.git
```

* Enter the directory:

```bash
cd slashershare
```

* Ensure you have the requested ruby version :

```bash
ruby -v
```

if it's ruby-2.4.2 you're good to go! 
else, install the requested version with rvm:

```bash
rvm install ruby-2.4.2
rvm use 2.4.2
ruby -v
```
If the output is ruby-2.4.2 you can move to the next section.

* install dependancies
```bash
bundle install
```

* Make migration and load seed
```bash
rails db:migrate
rails reload
```

* Start rails server
```bash
rails s
```

* Start browsing
```bash
open http://localhost:3000
```

### Contributions
Each feature should be covered by at least one test.

### Custom rake tasks

The following command:
```bash
rails reload
```
Do the same than: 
```bash 
rake db:drop db:create db:migrate db:seed
```
### More informations

* Ruby version and rails version

ruby-2.4.2

rails-5.1.4

* System dependencies

postgres in production

* Configuration


* Database creation

rails db:create

* Database initialization
rails db:migrate

* How to run the test suite
rails test

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

Continous integration is under the vigilance of travis.

Just push on github and your code will be deployed unless test failed.
