# Code you want to run in all environments HERE
# ...
load(Rails.root.join('db', 'seeds', "#{Rails.env.downcase}.rb"))
