# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
City.destroy_all

queensland = City.create!(city_name:'Queensland', country_name:'Australia', photo_url:'http://beachcomberpete.com/home/wp-content/uploads/2012/02/Gold-Coast-Queensland-Australia.jpg')
copenhagen = City.create!(city_name:'Copenhagen', country_name:'Denmark', photo_url:'https://c1.staticflickr.com/1/180/390543990_3d91162e63.jpg')
rouen = City.create!(city_name:'Rouen', country_name: 'France', photo_url:'http://www.boalingua.ch/uploads/media_tool/images/frankreich_rouen_bruecken.jpg')
cortona = City.create!(city_name:'Cortona', country_name:'Italy', photo_url:'https://s-media-cache-ak0.pinimg.com/originals/33/29/b5/3329b5694f26cf1f7e3721c8a0215e86.jpg')
nairobi = City.create!(city_name:'Nairobi', country_name:'Kenya', photo_url:'https://a630bbb17ae9d1222021-2afb368a5169e2c14e6c1f3083d913b8.ssl.cf3.rackcdn.com/2013/08/nairobi.jpg')
chiang_mai = City.create!(city_name:'Chiang Mai', country_name:'Thailand', photo_url:'http://media-cdn.tripadvisor.com/media/photo-s/05/6f/0a/6f/dhara-dhevi-chiang-mai.jpg')

nyhavn = copenhagen.suggestions.create!(name:'Ashlinn', ideas: "1) Go on a Nyhavn boat cruise. 2) eat one of their famous hotdogs!")
