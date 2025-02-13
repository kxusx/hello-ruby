# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G', :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13', :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R', :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R', :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13', :release_date => '13-Aug-2021'},
  {:title => 'The Power of the Dog', :rating => 'R', :release_date => '26-Nov-2021'},
  {:title => 'Pulp Fiction', :rating => 'R', :release_date => '19-Oct-1994'},
  {:title => 'The Hateful Eight', :rating => 'R', :release_date => '9-Jan-2016'},
  {:title => 'Once Upon a Time in Hollywood', :rating => 'R', :release_date => '27-Jul-2019'},
]

more_movies.each do |movie|
  Movie.find_or_create_by!(title: movie[:title], release_date: movie[:release_date]) do |m|
    m.rating = movie[:rating]
  end
end
