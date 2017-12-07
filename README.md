# Slashershare 
![Build result](https://travis-ci.org/armandfardeau/slashershare.svg?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/armandfardeau/slashershare/badge.svg?branch=master)](https://coveralls.io/github/armandfardeau/slashershare?branch=master)
[![Maintainability](https://api.codeclimate.com/v1/badges/4f04691b4116554cbe63/maintainability)](https://codeclimate.com/github/armandfardeau/slashershare/maintainability)

Take a look on the website [SlasherShare](https://slashershare.herokuapp.com/)

Check the doc [SlasherShare-doc](https://armandfardeau.github.io/slashershare/)

Table of content

1. [Short install](#how-to-install---short-way)

2. [Detailed install](#how-to-install---detailed-way)

3. [How to contribute](#contributions)

4. [More infos](#more-infos)

______________________________________________________________

## How to install - short way

You're not afraid of copying and pasting code into your terminal, are you?

```bash
git clone https://github.com/armandfardeau/slashershare.git
cd slashershare
chmod +x r.sh
./r.sh
```
Reload page after installation and you're good to go !

______________________________________________________________

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

* Ensure you have the requested ruby version and rvm:

```bash
ruby -v
```

if it's ruby-2.4.2 you're good to go! 
else, install the requested version with rvm.

* check your rvm version

```bash
rvm -v
```
If you get an rvm not found error, you may try the following

```bash
source ~/.rvm/scripts/rvm
```

```bash
rvm install ruby-2.4.2
rvm use 2.4.2
ruby -v
```
If the output is ruby-2.4.2 you can move to the next section.

* install bundler
```bash
gem install bundler
```
* install dependancies
```bash
bundle install --without production
```

* install dependancies for paperclip and mailcatcher
```bash
brew install imagemagick
gem install mailcatcher
```

* copy .env.example and fill it with your env vars
```bash
cp -n ./.env.example ./.env
```

* copy .env.example and fill it with your env vars
```bash
cp -n ./.env.example ./.env
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
* Start mailcatcher server in a new tab (cmd + d on Iterm2)
```bash
mailcatcher
```

* Start browsing
```bash
open http://localhost:3000
```
______________________________________________________________

## Contributions

This project is open to contribution, in order to keep the codebase as clean as possible, you're advised to follow the rules.

#### Rules 
Branch master is **protected**, you cannot push to it.

Each feature should be covered by **at least** one test.

Each pull request need to be validated by :

- rubocop
- codeclimate
- coveralls
- travis

To contribute, start a new branch

`git checkout -b feature/nameofyourfeature`

add and commit your changes, then push it to the repo

`git push --set-upstream origin feature/nameofyourfeature`

![pull request image](https://kirstiejane.github.io/friendly-github-intro/assets/images-slides/my-first-pr-new-pr1.png)

Be explicit, explain what you add to the project !
Ask for a peer review.

______________________________________________________________

## More infos

### Custom rake tasks

The following command:
```bash
rails reload
```
Do the same than: 
```bash 
rake db:drop db:create db:migrate db:seed
```

Generate doc with Rdoc the simple way :
```bash
rails doc:generate
```

Get doc status with :
```bash
rails doc:status
```

You can get the list of rake task with :
```bash
rails -T
```
### Active admin back office

Active admin is install both in developement and in production to ensure an easy developement.
Login and password couple can be found in seed file.

To login go to 

[http://localhost:3000/admin/](http://localhost:3000/admin/)

or in production

[https://slashershare.herokuapp.com/admin](https://slashershare.herokuapp.com/admin)



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

```bash 
rails test
rubocop
```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

Continous integration is under the vigilance of travis.

Just push on github and your code will be deployed unless test failed.
