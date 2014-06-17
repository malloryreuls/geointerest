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

m = InterestGroup.create(name: "Music Venues")
m.markers.create(title: "Greek Theatre", address: "2700 N Vermont Ave, Los Angeles, CA 90027")
m.markers.create(title: "Walt Disney Concert Hall", address: "111 S Grand Ave, Los Angeles, CA 90012")
m.markers.create(title: "Hollywood Bowl", address: "2301 N Highland Ave, Los Angeles, CA 90068")
