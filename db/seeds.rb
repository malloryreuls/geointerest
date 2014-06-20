# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Marker.destroy_all
InterestGroup.destroy_all

s = InterestGroup.create(name: "Surf Spots")
s.markers.create(title: "El Porto", description: "A tried-and-true beginners surf spot in El Segundo that also boasts some bigger swell in the winter months (great for intermediate level surfers).", address: "The Strand Manhattan Beach, CA 90266")
s.markers.create(title: "Heavens", description: "A sandy-bottom surf spot with pretty consistent waves that works for all levels of surfers. Take PCH to Leo Carillo State Beach.", address: "35100 W Pacific Coast Hwy Malibu, CA 90265")
s.markers.create(title: "Hermosa Beach Pier", description: "A sandy bottom surf area good for most levels of surfers. It also tends to attract some advanced wave riders.", address: "Pier Ave, Hermosa Beach, CA 90254")
s.markers.create(title: "Leo Carillo", description: "Good standard surfing in a zone of flat rocks with sand. Do-able by surfers of all levels.", address: "35000 W Pacific Coast Hwy Malibu, CA 90265")
s.markers.create(title: "Lunada Bay", description: "A world class rocky reef surf spot most suitable for advanced riders. It's located on the Western end of Palos Verdes.", address: "Lunada Bay
Rancho Palos Verdes, CA 90275")
s.markers.create(title: "Manhattan Beach/26th Street", description: "All levels of surfers flock to this sandy bottom surf spot but it's known to particularly draw advanced wave riders.", address: "26th Street Beach, Manhattan Beach, Manhattan Beach, CA")
s.markers.create(title: "Pyramid Cove Point", description: "Access this world class rock sand bottom surf spot by boat. Advanced knowledge of surfing recommended.", address: "San Clemente Island, CA")
s.markers.create(title: "Santa Monica / Samo 20", description: "Frequent waves hit at this centrally located surf spot that's popular with beginners.", latitude: 33.995466, longitude: -118.483253)
s.markers.create(title: "Sunset Beach", description: "A regional classic drawing all levels of surfers. Terrain is sandy with coral and some sharp rocks. Take Sunset Boulevard going West until the road ends at the PCH.", latitude: 34.038260, longitude: -118.555368)
s.markers.create(title: "Redondo/ The Breakwater", description: "A breakwater and jetty spot for advanced surfers around the Redondo/Hermosa border.", address: "231 Yacht Club Way, Redondo Beach, CA 90277")
s.markers.create(title: "Topanga Point", description: "Experienced surfers like this area classic, which has pretty consistent waves over terrain that's sandy and rocky.", latitude: 34.039319, longitude: -118.574962)
s.markers.create(title: "Venice Beach Pier", description: "A centrally located surf spot that appeals to wave riders of all levels.", address: "Washington Blvd and Ocean Front Walk Venice, CA 90291")
s.markers.create(title: "Zeroes", description: "Regular waves grace this spot for experienced surfers. Surf is frequent and the bottom contains coral and some sharp rocks. Nicholas Canyon Beach, not far from Leo Carillo.", address: "33850 Pacific Coast Hwy, Malibu, CA 90265")
s.markers.create(title: "Zuma Beach", description: "This is sometimes said to be a good place for beginners but some disagree saying the waves are short and quick, giving it a slightly higher intermediate ranking.", latitude: 34.016005, longitude: -118.821087)

m = InterestGroup.create(name: "Music Venues")
m.markers.create(title: "Greek Theatre", address: "2700 N Vermont Ave, Los Angeles, CA 90027")
m.markers.create(title: "Walt Disney Concert Hall", address: "111 S Grand Ave, Los Angeles, CA 90012")
m.markers.create(title: "Hollywood Bowl", address: "2301 N Highland Ave, Los Angeles, CA 90068")
m.markers.create(title: "House of Blues Sunset", address: "8430 Sunset Blvd, West Hollywood, CA 90069")
m.markers.create(title: "Troubadour", address: "9081 Santa Monica Blvd, West Hollywood, CA 90069")
m.markers.create(title: "El Rey Theatre", address: "5515 Wilshire Blvd, Los Angeles, CA 90036")
m.markers.create(title: "The Roxy Theatre", address: "9009 Sunset Blvd, West Hollywood, CA 90069")
m.markers.create(title: "Avalon Hollywood", address: "1735 Vine St, Los Angeles, CA 90028")
m.markers.create(title: "The Smell", address: "247 S Main St, Los Angeles, CA 90013")
m.markers.create(title: "Whisky a Go Go", address: "8901 Sunset Blvd, West Hollywood, CA 90069")
m.markers.create(title: "Staples Center", address: "1111 S Figueroa St, Los Angeles, CA 90015")
m.markers.create(title: "The Viper Room", address: "8852 West Sunset Boulevard, West Hollywood, CA 90069")
m.markers.create(title: "Echoplex", address: "1154 Glendale Blvd, Los Angeles, CA 90026")
m.markers.create(title: "The Echo", address: "1822 Sunset Blvd, Los Angeles, CA 90026  ")
m.markers.create(title: "Club Nokia", address: "800 W Olympic Blvd, Los Angeles, CA 90015")
m.markers.create(title: "Nokia Theatre L.A. Live", address: "777 Chick Hearn Ct, Los Angeles, CA 90015")
m.markers.create(title: "Hollywood Palladium", address: "6215 Sunset Blvd, Los Angeles, CA 90028")

f = InterestGroup.create(name: "GA Secrets")
f.markers.create(title: "Groundworks Coffee Spot", address: "395 Santa Monica Blvd
Santa Monica, CA 90401")
f.markers.create(title: "GA Campus", address: "	1520 2nd St, Santa Monica, CA 90401")
f.markers.create(title: "Copa Happy Hour", description:"Best Happy Hour to meet alumni", address: " 217 Broadway, Santa Monica, CA 90401")