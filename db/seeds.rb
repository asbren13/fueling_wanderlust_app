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
canton = City.create!(city_name:'Canton, New York', country_name:'United States', photo_url:'http://www.33parkstreet.com/images/home3.jpg')

nyhavn = copenhagen.suggestions.create!(name:'Ashlinn', ideas: "1) Go on a Nyhavn boat cruise. 2) eat one of their famous hotdogs!")
tammy = chiang_mai.suggestions.create!(name:'Tammy', ideas: '1. Bua Tong Water Fall aka Sticky Waterfall-Ssoooo awesome!! A waterfall you can run up!
2. Baan Chang Elephant Park-Elephant rescue place
3. Doi Suthep Temple')
bailey = cortona.suggestions.create!(name:'Bailey', ideas:"1: Molessini wine tasting! Duh
2: Cafe Degli Artisti for a great cappuccino or food!
3: Osteria del teatro: dinner
4: walk to the very top of the hill to visit Basilica di Santa Magherita
5: visit MAEC (Museo dell'Accademia Etrusco): the Etruscan museum
6: Piazza Della Repubblica (especially on market day)
7: Tonino's: a five star restaurant
8: La Celle: a waterfall just a hike away!")
cath = nairobi.suggestions.create!(name:'Caitlin', ideas:"- David Sheldrick Wildlife Trust Elephant Orphanage
- Kazuri Bead Factory
- Dinner at Carnivore (and get nyama choma)
- Visit Kibera and Red Rose School
- Shopping at Toy Market
- Masaai Markets at Westgate and Village Market
- Climb Mt. Longonot in the Rift Valley
- Spend time on the coast of the Indian Ocean
- Drink lots of Tusker
- Coffee at Nairobi Java House")
emma = rouen.suggestions.create!(name:'Emma', ideas:"-View the exhibits at the Musée de Beaux Arts
-Spend time in the Jardin de Plantes when the weather’s nice
- Climb the Gros Horloge (big clock)
- Go to Place St.Marc for the biggest Sunday market in the city
- Best selection of coffees and teas from around the world at Couleur Café
- Drink Desperados at one of O’Kallaghan’s outdoor tables
- Go to Dame Cakes for tea and cakes
- Explore the Vieux Marché and the surrounding restaurants and bars
- Thé Majescule is a used bookstore on the first floor and a café on the second floor. Perfect place to study and read.
- Walk along the Seine
- See a renowned Opera or Ballet at the Theatre des Arts
- Drink Belgian Delirum beer at the Delirium bar
- Shop on the Rue Gros Horloge")
kelly = canton.suggestions.create!(name:'Kelly', ideas:'-Hit up the Hoot Owl and make sure to ride that wave!')
