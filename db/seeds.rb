# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
City.destroy_all

cortona = City.create!(city_name:'Cortona', country_name:'Italy')
chiang_mai = City.create!(city_name:'Chiang Mai', country_name:'Thailand')
queensland = City.create!(city_name:'Queensland', country_name:'Australia')
nairobi = City.create!(city_name:'Nairobi', country_name:'Kenya')
copenhagen = City.create!(city_name:'Copenhagen', country_name:'Denmark')
nyhavn = copenhagen.suggestions.create!(name:'Ashlinn', ideas: "1) Go on a Nyhavn boat cruise. 2) eat one of their famous hotdogs!")
