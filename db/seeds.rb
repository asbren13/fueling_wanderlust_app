# Seeds file for fueling wanderlust
City.destroy_all

copenhagen = City.create!(city_name: 'Copenhagen', country_name: 'Denmark', photo_url: 'http://socialmediaweek.org/wp-content/themes/smw-2014/assets/download/header-copenhagen.jpg')
rouen = City.create!(city_name: 'Rouen', country_name: 'France', photo_url: 'http://www.leisuretime.co.uk/images/itinerary/rouen_harbour_header.jpg' )
cortona = City.create!(city_name: 'Cortona', country_name: 'Italy', photo_url: 'http://dylanbrowndesigns.com/wordpress/wp-content/uploads/2014/06/cortona-panorama.jpg')
nairobi = City.create!(city_name: 'Nairobi', country_name: 'Kenya', photo_url: 'https://www.tuifly.com/images/visuals/header_flugziel_nbo.jpg')
chiang_mai = City.create!(city_name: 'Chiang Mai', country_name: 'Thailand', photo_url: 'http://www.primarktravelhouse.com/images/thailand-images/amazing-thailand.jpg')
san_fran = City.create!(city_name: 'San Francisco, CA', country_name: 'United States', photo_url: 'http://mwthotels.com/tollhouse/files/2012/01/area-header-tiburon-sanfrancisco-1024x533.jpg')
florence = City.create!(city_name: 'Florence', country_name: 'Italy', photo_url: 'http://www.ila-chateau.com/hotel-toscana-firenze-villoresi/wp-content/uploads/florence-header.jpg')
galway = City.create!(city_name: 'Galway', country_name: 'Ireland', photo_url: 'http://upload.wikimedia.org/wikipedia/commons/b/bb/Galway_Panorama_%287061241087%29.jpg')
london = City.create!(city_name: 'London', country_name: 'England', photo_url: 'http://www.londonshoeshine.com/wp-content/uploads/2013/06/panoramic_cityscapes4.jpg')
ottawa = City.create!(city_name: 'Ottawa', country_name: 'Canada', photo_url: 'http://blog.navut.com/wp-content/uploads/2014/11/3794011206_37538c9bf1_b1.jpg')
taupo = City.create!(city_name: 'Taupo', country_name: 'New Zealand', photo_url: 'http://www.straytravel.com/assets/Uploads/taupo-sunset-header.jpg')
calgary = City.create!(city_name: 'Calgary', country_name: 'Canada', photo_url: 'http://dsphotographic.com/blog/wp-content/uploads/2011/05/calgary-skyline-hdr-pano.jpg')
boston = City.create!(city_name: 'Boston, MA', country_name: 'United States', photo_url: 'http://www.worldpropertychannel.com/news-assets/Boston-skyline.jpg')
portland = City.create!(city_name: 'Portland, ME', country_name: 'United States', photo_url: 'https://thunktank.files.wordpress.com/2008/09/portland-maine-cityscape-skyline-hdr-panorama-cropped-smaller-e1348604112987.jpg')
canton = City.create!(city_name: 'Canton, NY', country_name: 'United States', photo_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaC3_wpzykV4P_MLgdVxm_hh2s4B9Pc2ngPTowgnw8VWwYEyoYug')
toluca = City.create!(city_name: 'Toluca', country_name: 'Mexico', photo_url: 'http://th08.deviantart.net/fs71/PRE/f/2012/039/6/2/panorama_del_nevado_de_toluca_by_mowvam-d4p3fyy.jpg')

copenhagen.suggestions.create!(name: 'Ashlinn', ideas:  "1) Go on a Nyhavn boat cruise. 2) Eat one of their famous hotdogs!", category: 'Combination')
chiang_mai.suggestions.create!(name: 'Tammy', ideas:  '1. Bua Tong Water Fall aka Sticky Waterfall-Soooo awesome!! A waterfall you can run up!
2. Baan Chang Elephant Park-Elephant rescue place
3. Doi Suthep Temple',
  category: 'Outdoors')
cortona.suggestions.create!(name: 'Bailey', ideas: "1: Molessini wine tasting! Duh
2: Cafe Degli Artisti for a great cappuccino or food!
3: Osteria del teatro: dinner
4: walk to the very top of the hill to visit Basilica di Santa Magherita
5: visit MAEC (Museo dell'Accademia Etrusco): the Etruscan museum
6: Piazza Della Repubblica (especially on market day)
7: Tonino's: a five star restaurant
8: La Celle: a waterfall just a hike away!",
category: 'Combination')
florence.suggestions.create!(name: 'Jess', ideas: 'You have to climb up to Piazzale Michelangelo and see the whole panoramic view of the city from up there! Also, visit Trattoria Anita for a delicious authentic Italian meal!', category: 'Combination')
nairobi.suggestions.create!(name: 'Caitlin', ideas: "- David Sheldrick Wildlife Trust Elephant Orphanage
- Kazuri Bead Factory
- Dinner at Carnivore (and get nyama choma)
- Visit Kibera and Red Rose School
- Shopping at Toy Market
- Masaai Markets at Westgate and Village Market
- Climb Mt. Longonot in the Rift Valley
- Spend time on the coast of the Indian Ocean
- Drink lots of Tusker
- Coffee at Nairobi Java House",
category: 'Combination')
rouen.suggestions.create!(name: 'Emma', ideas: "-View the exhibits at the Musée de Beaux Arts
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
- Shop on the Rue Gros Horloge",
category: 'Combination')
san_fran.suggestions.create!(name: 'Karly', ideas: 'My absolute favorite place to go on a sunny weekend is the Palace of Fine Arts!', category:'Sightseeing')
galway.suggestions.create!(name: 'Declan', ideas: "Must do's include: climbing Croagh Patrick, hiking the Cliffs of Moher, kayaking around the Cliffs of Moher, doing a pub crawl, touring the medieval castles in the area, and biking around the Aran Islands", category: 'Combination')
london.suggestions.create!(name: 'Holly',
  ideas: "Go to O'Neil's in Muswell Hill! It's a lot of fun! You should also make sure to take time to do all of the typical tourist stuff like Buckingham Palace, the London Eye, the Tower of London, etc", category: 'Combination')
ottawa.suggestions.create!(name: 'Ashlinn', ideas: 'A must-do in the winter is skating on the Rideau Canal! It can be a bit crowded, but it is an awesome experience. Make sure to also check out Winterlude if you are in the area during late January or early February!', category: 'Outdoors')
taupo.suggestions.create!(name: 'Anonymous', ideas: 'Visit Lake Taupo and go skydiving while in the area to see some beautiful views!', category:'Outdoors')
calgary.suggestions.create!(name: 'Tys', ideas: 'Outside of Calgary, you should try to climb the Canadian Rockies!', category: 'Outdoors')
boston.suggestions.create!(name: 'GA WDI Class', ideas: 'You must experience the wonderful experience of the MBTA at least once. Especially in the winter.', category: 'Entertainment')
portland.suggestions.create!(name: 'Pat', ideas: "Check out DiMillo's!", category: 'Food')
canton.suggestions.create!(name: 'Kelly', ideas: "The Hoot Owl and Ridin' that wave are must-do's while you're in Canton", category: '18+')
canton.suggestions.create!(name: 'Ashlinn', ideas: "Stop by St. Lawrence University and try a Pub Cookie while you're there. Also stopping by the Hoot Owl is a must-do!", category: 'Combination')
toluca.suggestions.create!(name: 'Emily', ideas: "There is a volcano called El Nevado de Toluca that you can climb that is really beautiful. There are three lakes at almost the top, but it's really cool because its dormant and you can go up pretty far.", category: 'Outdoors')
