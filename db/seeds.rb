# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
House1 = House.create(name: "Villa", rank: 4,price: "2000", image: "https://res.cloudinary.com/lidu4394/image/upload/v1621343540/vu-anh-TiVPTYCG_3E-unsplash_1_gqha0y.jpg", description: "Citadel Apartments boasts manicured landscaping and an ample amenity package. Parking is comprised of 44 total spaces, half of which are covered garages while the other half are lined surface spots. The property entrance is magnificently marked with a new wood trellis and cement walkway. 
")
House2 = House.create(name: "Palace", rank: 5,price: "3000", image: "https://res.cloudinary.com/lidu4394/image/upload/v1621343503/terrah-holly-pmhdkgRCbtE-unsplash_wjvpgq.jpg", description: "Wake up refreshed in the elegant four-poster bed ata zen abode located in the rear of the home with views of the garden ,koi pond, and seasonal skyline.Private French door entrance opens to the spacious outdoor deck.")
House3 = House.create(name: "Apartment", rank: 3,price: "3500", image: "https://res.cloudinary.com/lidu4394/image/upload/v1621517741/digital-marketing-agency-ntwrk-g39p1kDjvSY-unsplash_xqmtzj.jpg", description: "Enjoy the amazing in-town neighbourhood of Atlanta where you can eat and shop! Come home to sleep in our dogs-allowed two bedroom home!")
House4 = House.create(name: "Room", rank: 5,price: "4000", image: "https://res.cloudinary.com/lidu4394/image/upload/v1621517709/webaliser-_TPTXZd9mOo-unsplash_evrcy2.jpg", description: "Majestic views from Mount Soledad to Sea World.Incredibly open feel looking down on the Bay Park below.A patio to hang out on and a fireplace for cozy evenings in.")

User1 = User.create(username: "Lidu", password: "1234567")
User2 = User.create(username: "Lidya", password: "1234567")
User3 = User.create(username: "lidu@gmail.com", password: "lidu43")

Favorite1= Favorite.create(user_id: 1, house_id: 2)
Favorite2= Favorite.create(user_id: 2, house_id: 3)