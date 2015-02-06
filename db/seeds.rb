# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
City.destroy_all
City.create!(city_name:'Copenhagen', country_name:'Denmark')
City.create!(city_name:'Cortona', country_name:'Italy')
City.create!(city_name:'Chiang Mai', country_name:'Thailand')
City.create!(city_name:'Queensland', country_name:'Australia')
City.create!(city_name:'Nairobi', country_name:'Kenya')
