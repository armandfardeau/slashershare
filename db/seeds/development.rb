# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
userZero = User.create! :username => 'Armand Fardeau',
                        :email => 'fardeauarmand@gmail.com',
                        :age => 22,
                        :phone => '0147498143',
                        :address => '22 rue des amandiers 92100 Boulogne-Billancourt',
                        :password => 'adminadmin',
                        :password_confirmation => 'adminadmin'

userOne = User.create! :username => 'John Doe',
                       :email => 'doe@gmail.com',
                       :age => 22,
                       :phone => '0147498143',
                       :address => '22 rue des amandiers 92100 Boulogne-Billancourt',
                       :password => 'password',
                       :password_confirmation => 'password'

userTwo = User.create! :username => 'John Oed',
                       :email => 'Oed@gmail.com',
                       :age => 22,
                       :phone => '0147498143',
                       :address => '22 rue des amandiers 92100 Boulogne-Billancourt',
                       :password => 'password',
                       :password_confirmation => 'password'

userThree = User.create! :username => 'John deo',
                         :email => 'deo@gmail.com',
                         :age => 22,
                         :phone => '0147498143',
                         :address => '22 rue des amandiers 92100 Boulogne-Billancourt',
                         :password => 'password',
                         :password_confirmation => 'password'


offerOne = Offer.create! title: "Batman",
                         user_id: userOne.id,
                         place: '22 rue des amandiers 92100 Nanterre',
                         description: <<-OFFER
Batman is a fictional character created by the artist Bob Kane and writer Bill Finger. A comic book superhero, Batman first appeared in Detective Comics #27 (May 1939), and since then has appeared primarily in publications by DC Comics. Originally referred to as "The Bat-Man" and still referred to at times as "The Batman", he is additionally known as "The Caped Crusader", "The Dark Knight", and the "World's Greatest Detective," among other titles. (from Wikipedia)
OFFER

offerTwo = Offer.create! title: "Superman",
                         user_id: userTwo.id,
                         place: '22 rue des amandiers 92100 Nanterre',
                         description: <<-OFFER
Superman is a fictional comic book superhero appearing in publications by DC Comics, widely considered to be an American cultural icon. Created by American writer Jerry Siegel and Canadian-born American artist Joe Shuster in 1932 while both were living in Cleveland, Ohio, and sold to Detective Comics, Inc. (later DC Comics) in 1938, the character first appeared in Action Comics #1 (June 1938) and subsequently appeared in various radio serials, television programs, films, newspaper strips, and video games. (from Wikipedia)
OFFER

offerThree = Offer.create! title: "Krypton",
                           user_id: userThree.id,
                           place: '22 rue des amandiers 92100 Nanterre',
                           description: <<-OFFER
Krypton is a fictional planet in the DC Comics universe, and the native world of the super-heroes Superman and, in some tellings, Supergirl and Krypto the Superdog. Krypton has been portrayed consistently as having been destroyed just after Superman's flight from the planet, with exact details of its destruction varying by time period, writers and franchise. Kryptonians were the dominant people of Krypton. (from Wikipedia)
OFFER

offerFour = Offer.create! title: "Lex Luthor",
                          user_id: userOne.id,
                          place: '22 rue des amandiers 92100 Nanterre',
                          description: <<-OFFER
Lex Luthor is a fictional character, a supervillain who appears in comic books published by DC Comics. He is the archenemy of Superman, and is also a major adversary of Batman and other superheroes in the DC Universe. Created by Jerry Siegel and Joe Shuster, he first appeared in Action Comics #23 (April 1940). Luthor is described as "a power-mad, evil scientist" of high intelligence and incredible technological prowess. (from Wikipedia)
OFFER

offerFive = Offer.create! title: "Robin",
                          user_id: userTwo.id,
                          place: '22 rue des amandiers 92100 Nanterre',
                          description: <<-OFFER
Robin is the name of several fictional characters appearing in comic books published by DC Comics, originally created by Bob Kane, Bill Finger and Jerry Robinson, as a junior counterpart to DC Comics superhero Batman. The team of Batman and Robin is commonly referred to as the Dynamic Duo or the Caped Crusaders. (from Wikipedia)
OFFER

offerSix = Offer.create! title: "Robin",
                         user_id: userThree.id,
                         place: '22 rue des amandiers 92100 Nanterre',
                         description: <<-OFFER
Robin is the name of several fictional characters appearing in comic books published by DC Comics, originally created by Bob Kane, Bill Finger and Jerry Robinson, as a junior counterpart to DC Comics superhero Batman. The team of Batman and Robin is commonly referred to as the Dynamic Duo or the Caped Crusaders. (from Wikipedia)
OFFER

offerOne.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offerOne.save
offerTwo.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offerTwo.save
offerThree.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offerThree.save
offerFour.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offerFour.save
offerFive.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offerFive.save
offerSix.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offerSix.save
