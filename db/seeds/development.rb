# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
images_seeds_path = Pathname('app/assets/images/images_seeds')

if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

user_zero = User.create! username: 'Armand Fardeau',
                         avatar: File.new(Rails.root.join(images_seeds_path, 'armand_fardeau.jpg')),
                         email: 'fardeauarmand@gmail.com',
                         age: 22,
                         phone: '0147498143',
                         address: '22 rue des amandiers 92100 Boulogne-Billancourt',
                         password: 'adminadmin',
                         password_confirmation: 'adminadmin'

user_one = User.create! username: 'John Doe',
                        email: 'doe@gmail.com',
                        age: 22,
                        phone: '0147498143',
                        address: '22 rue des amandiers 92100 Boulogne-Billancourt',
                        password: 'password',
                        password_confirmation: 'password'

user_two = User.create! username: 'John Oed',
                        email: 'Oed@gmail.com',
                        age: 22,
                        phone: '0147498143',
                        address: '22 rue des amandiers 92100 Boulogne-Billancourt',
                        password: 'password',
                        password_confirmation: 'password'

user_three = User.create! username: 'John deo',
                          email: 'deo@gmail.com',
                          age: 22,
                          phone: '0147498143',
                          address: '22 rue des amandiers 92100 Boulogne-Billancourt',
                          password: 'password',
                          password_confirmation: 'password'

User.create! username: 'Anthelme Risser',
                        email: 'anthelme.risser@gmail.com',
                        age: 23,
                        phone: '0130400535',
                        address: '27bis, rue du Progrès 93100 Montreuil',
                        password: 'devdev',
                        password_confirmation: 'devdev'

User.create! username: 'Alexandre Chichportich',
                       email: 'alexanre.chichportich@hetic.net',
                       age: '21',
                       phone: '0147498143',
                       address: '27bis, rue du Progrès 93100 Montreuil',
                       password: 'password',
                       password_confirmation: 'password'

User.create! username: 'Yann-Edern Gillet',
                         email: 'yann-edern.gillet@hetic.net',
                         age: '21',
                         phone: '0147498143',
                         address: '27bis, rue du Progrès 93100 Montreuil',
                         password: 'password',
                         password_confirmation: 'password'

User.create! username: 'Juliette Gregoris',
                         email: 'juliette.gregoris@hetic.net',
                         age: '22',
                         phone: '0147498143',
                         address: '27bis, rue du Progrès 93100 Montreuil',
                         password: 'password',
                         password_confirmation: 'password'

offer_one = Offer.create! title: 'Batman',
                          user_id: user_one.id,
                          place: '22 rue des amandiers 92100 Nanterre',
                          description: <<-OFFER.strip_heredoc
  Batman is a fictional character created by the artist Bob Kane and writer Bill Finger.
  A comic book superhero, Batman first appeared in Detective Comics #27 (May 1939),
  and since then has appeared primarily in publications by DC Comics.
  Originally referred to as 'The Bat-Man' and still referred to at times as 'The Batman',
  he is additionally known as 'The Caped Crusader', 'The Dark Knight',
  and the 'World's Greatest Detective,' among other titles. (from Wikipedia)
OFFER

offer_zero = Offer.create! title: 'Superman',
                           user_id: user_zero.id,
                           place: '22 rue des amandiers 92100 Nanterre',
                           description: <<-OFFER.strip_heredoc
  Superman is a fictional comic book superhero appearing in publications by DC Comics,
  widely considered to be an American cultural icon.
  Created by American writer Jerry Siegel and Canadian-born American artist Joe Shuster in 1932
  while both were living in Cleveland, Ohio, and sold to Detective Comics, Inc.
  (later DC Comics) in 1938,
  the character first appeared in Action Comics #1 (June 1938) and subsequently appeared in various radio serials,
  television programs, films, newspaper strips, and video games. (from Wikipedia)
OFFER

offer_two = Offer.create! title: 'Superman',
                          user_id: user_two.id,
                          place: '22 rue des amandiers 92100 Nanterre',
                          description: <<-OFFER.strip_heredoc
  Superman is a fictional comic book superhero appearing in publications by DC Comics,
  widely considered to be an American cultural icon.
  Created by American writer Jerry Siegel and Canadian-born American artist Joe Shuster in 1932
  while both were living in Cleveland, Ohio, and sold to Detective Comics, Inc. (later DC Comics) in 1938,
  the character first appeared in Action Comics #1 (June 1938) and subsequently appeared in various radio serials,
  television programs, films, newspaper strips, and video games. (from Wikipedia)
OFFER

offer_three = Offer.create! title: 'Krypton',
                            user_id: user_three.id,
                            place: '22 rue des amandiers 92100 Nanterre',
                            description: <<-OFFER.strip_heredoc
  Krypton is a fictional planet in the DC Comics universe,
  and the native world of the super-heroes Superman and, in some tellings,
  Supergirl and Krypto the Superdog.
  Krypton has been portrayed consistently as having been destroyed just after Superman's flight from the planet,
  with exact details of its destruction varying by time period,
  writers and franchise. Kryptonians were the dominant people of Krypton. (from Wikipedia)
OFFER

offer_four = Offer.create! title: 'Lex Luthor',
                           user_id: user_one.id,
                           place: '22 rue des amandiers 92100 Nanterre',
                           description: <<-OFFER.strip_heredoc
  Lex Luthor is a fictional character,
  a supervillain who appears in comic books published by DC Comics.
  He is the archenemy of Superman, and is also a major adversary of Batman and other superheroes in the DC Universe.
  Created by Jerry Siegel and Joe Shuster, he first appeared in Action Comics #23 (April 1940).
  Luthor is described as 'a power-mad, evil scientist' of high intelligence and incredible technological prowess.
  (from Wikipedia)
OFFER

offer_five = Offer.create! title: 'Robin',
                           user_id: user_two.id,
                           place: '22 rue des amandiers 92100 Nanterre',
                           description: <<-OFFER.strip_heredoc
  Robin is the name of several fictional characters appearing in comic books published by DC Comics,
  originally created by Bob Kane, Bill Finger and Jerry Robinson,
  as a junior counterpart to DC Comics superhero Batman.
  The team of Batman and Robin is commonly referred to as the Dynamic Duo or the Caped Crusaders.
  (from Wikipedia)
OFFER

offer_six = Offer.create! title: 'Robin',
                          user_id: user_three.id,
                          place: '22 rue des amandiers 92100 Nanterre',
                          description: <<-OFFER.strip_heredoc
  Robin is the name of several fictional characters appearing in comic books published by DC Comics,
  originally created by Bob Kane, Bill Finger and Jerry Robinson,
  as a junior counterpart to DC Comics superhero Batman.
  The team of Batman and Robin is commonly referred to as the Dynamic Duo or the Caped Crusaders.
  (from Wikipedia)
OFFER

offer_zero.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offer_zero.save
offer_one.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offer_one.save
offer_two.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offer_two.save
offer_three.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offer_three.save
offer_four.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offer_four.save
offer_five.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offer_five.save
offer_six.tag_list.add 'Accountant', 'Software engineer', 'English speaker'
offer_six.save
