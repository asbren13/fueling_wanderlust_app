# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
City.destroy_all

copenhagen = City.create!(city_name:'Copenhagen', country_name:'Denmark', photo_url:'http://socialmediaweek.org/wp-content/themes/smw-2014/assets/download/header-copenhagen.jpg')
rouen = City.create!(city_name:'Rouen', country_name: 'France', photo_url:'http://www.leisuretime.co.uk/images/itinerary/rouen_harbour_header.jpg')
cortona = City.create!(city_name:'Cortona', country_name:'Italy', photo_url:'http://dylanbrowndesigns.com/wordpress/wp-content/uploads/2014/06/cortona-panorama.jpg')
florence = City.create!(city_name:'Florence', country_name:'Italy', photo_url:'http://www.ila-chateau.com/hotel-toscana-firenze-villoresi/wp-content/uploads/florence-header.jpg')
nairobi = City.create!(city_name:'Nairobi', country_name:'Kenya', photo_url:'https://www.tuifly.com/images/visuals/header_flugziel_nbo.jpg')
chiang_mai = City.create!(city_name:'Chiang Mai', country_name:'Thailand', photo_url:'http://www.primarktravelhouse.com/images/thailand-images/amazing-thailand.jpg')

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
jess = florence.suggestions.create!(name:'Jess', ideas:'You have to climb up to Piazzale Michelangelo and see the whole panoramic view of the city from up there! Also, visit Trattoria Anita for a delicious authentic Italian meal!')
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

