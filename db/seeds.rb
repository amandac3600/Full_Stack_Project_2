# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# "Sid": "Stmt1420751757000"
# "arn:aws:iam::268911112477:user/welp-master"
require "open-uri"

User.destroy_all
user1 = User.create!(first_name: 'Michael', last_name: 'Scott', email: 'mscott@mail.com', password: 'michael')
user2 = User.create!(first_name: 'Dwight', last_name: 'Schrute', email: 'dschrute@mail.com', password: 'dwight')
user3 = User.create!(first_name: 'Jim', last_name: 'Halpert', email: 'jhalpert@mail.com', password: 'jimhalpert')
user4 = User.create!(first_name: 'Demo', last_name: 'User', email: 'demo@user.com', password: 'demouser')

Business.destroy_all
business1 = Business.create!(name: "MILK+T", address: "310 E 2nd St", city: "Los Angeles", state: "CA", zip_code: "90012", phone_number: "(323) 884-1164", website: "http://www.milkandt.com", open: "12:00PM", close: "10:00PM", category: "Bubble Tea", price: "$")
business1.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/MILK%2BT.jpg'), filename: 'MILK+T.jpg')
business1.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/MILK%2BT2.jpg'), filename: 'MILK+T2.jpg')
# business1.photos.attach(io: open(''), filename: '')
business1.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/milktmap.png'), filename: 'milktmap.png')

business2 = Business.create!(name: "Dingle Berries Coffee and Tea", address: "8036 W 3rd St", city: "Los Angeles", state: "CA", zip_code: "90048", phone_number: "(323) 413-2604", website: "https://dingleberriescoffeeandtea.com", open: "12:00PM", close: "7:00PM", category: "Bubble Tea", price: "$")
business2.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Dingle_Berries.jpg"), filename: "Dingle_Berries.jpg")
business2.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/DingleBerries2.jpg'), filename: 'DingleBerries2.jpg')
# business2.photos.attach(io: open(''), filename: '')
business2.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/dinglemap.png'), filename: 'dinglemap.png')

business3 = Business.create!(name: "Bao Dim Sum House", address: "8256 Beverly Blvd", city: "Los Angeles", state: "CA", zip_code: "90048", phone_number: "(323) 655-6556", website: "http://www.baodimsum.com/", open: "12:00PM", close: "9:00PM", category: "Dim Sum", price: "$$")
business3.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Bao_Dim_Sum.jpg"), filename: "Bao_Dim_Sum.jpg")
business3.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/BaoDimSum2.jpg'), filename: 'BaoDimSum2.jpg')
# business3.photos.attach(io: open(''), filename: '')
business3.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/baomap.png'), filename: 'baomap.png')

business4 = Business.create!(name: "Zzamong", address: "4355 W 3rd St", city: "Los Angeles", state: "CA", zip_code: "90004", phone_number: "(213) 739-2747", website: "http://zzamongrestaurant.com", open: "11:30AM", close: "9:30PM", category: "Korean", price: "$$")
business4.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Zzamong.jpg"), filename: "Zzamong.jpg")
business4.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/zzamong2.jpg'), filename: 'zzamong2.jpg')
# business4.photos.attach(io: open(''), filename: '')
business4.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/zzamongmap.png'), filename: 'zzamongmap.png')

business5 = Business.create!(name: "Kang Ho-dong Baekjong", address: "3465 W 6th St, Ste 20", city: "Los Angeles", state: "CA", zip_code: "90020", phone_number: "(213) 384-9678", website: "http://www.baekjeongktown.com", open: "11:30AM", close: "1:30AM (Next day)", category: "Barbeque", price: "$$$")
business5.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Kang_Ho_Dong.jpg"), filename: "Kang_Ho_Dong.jpg")
business5.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Kanghodong2.jpg'), filename: 'Kanghodong2.jpg')
# business5.photos.attach(io: open(''), filename: '')
business5.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/kanghomap.png'), filename: 'kanghomap.png')

business6 = Business.create!(name: "Yuk Dae Jang", address: "3033 W 5th St, Ste 104-105", city: "Los Angeles", state: "CA", zip_code: "90020", phone_number: "(213) 352-1331", website: "https://yukdaejanglosangeles.mybistro.online/", open: "10:00AM", close: "9:00PM", category: "Korean", price: "$$")
business6.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Yuk_Dae_Jang.jpg"), filename: "Yuk_Dae_Jang.jpg")
business6.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/yukdaejang2.jpg'), filename: 'yukdaejang2.jpg')
# business6.photos.attach(io: open(''), filename: '')
business6.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/yukdaemap.png'), filename: 'yukdaemap.png')

business7 = Business.create!(name: "Leo's Taco Truck", address: "1515 S La Brea Ave", city: "Los Angeles", state: "CA", zip_code: "90019", phone_number: "(323) 346-2001", website: "http://www.leostacostruck.com", open: "10:00AM", close: "2:00AM (Next day)", category: "Food Trucks", price: "$")
business7.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Leo's_Taco.jpg"), filename: "Leo's_Taco.jpg")
business7.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/leostaco2.jpg'), filename: 'leostaco2.jpg')
# business7.photos.attach(io: open(''), filename: '')
business7.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/leosmap.png'), filename: 'leosmap.png')

business8 = Business.create!(name: "Tacos 1986", address: "609 S Spring St", city: "Los Angeles", state: "CA", zip_code: "90014", phone_number: "(213) 988-7202", website: "https://www.tacos1986.com", open: "11:00AM", close: "12:00AM (Next day)", category: "Tacos", price: "$")
business8.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Tacos_1986.jpg"), filename: "Tacos_1986.jpg")
business8.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/tacos1986-2.jpg'), filename: 'tacos1986-2.jpg')
# business8.photos.attach(io: open(''), filename: '')
business8.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/tacos1986map.png'), filename: 'tacos1986map.png')

business9 = Business.create!(name: "BurgerShop", address: "724 S Spring St", city: "Los Angeles", state: "CA", zip_code: "90014", phone_number: "(213) 267-6993", website: "https://www.burgershopca.net", open: "11:00AM", close: "9:00PM", category: "Burgers", price: "$$")
business9.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/BurgerShop.jpg"), filename: "BurgerShop.jpg")
business9.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/burgershop2.jpg'), filename: 'burgershop2.jpg')
# business9.photos.attach(io: open(''), filename: '')
business9.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/burgermap.png'), filename: 'burgermap.png')

business10 = Business.create!(name: "Masa of Echo Park", address: "1800 W Sunset Blvd", city: "Los Angeles", state: "CA", zip_code: "90026", phone_number: "(213) 989-1558", website: "https://www.masaofechopark.com", open: "1:00PM", close: "8:00PM", category: "Pizza", price: "$$")
business10.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Masa_Echo_Park.jpg"), filename: "Masa_Echo_Park.jpg")
business10.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/masaecho2.jpg'), filename: 'masaecho2.jpg')
# business10.photos.attach(io: open(''), filename: '')
business10.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/masamap.png'), filename: 'masamap.png')

business11 = Business.create!(name: "La Pergoletta", address: "1802 Hillhurst Ave", city: "Los Angeles", state: "CA", zip_code: "90027", phone_number: "(323) 664-8259", website: "http://www.lapergoletta.com", open: "12:00PM", close: "10:00PM", category: "Italian", price: "$$")
business11.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/La_Pergoletta.jpg"), filename: "La_Pergoletta.jpg")
business11.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/laperg2.jpg'), filename: 'laperg2.jpg')
# business11.photos.attach(io: open(''), filename: '')
business11.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/lapermap.png'), filename: 'lapermap.png')

business12 = Business.create!(name: "Full Moon House", address: "960 N Hill St", city: "Los Angeles", state: "CA", zip_code: "90012", phone_number: "(213) 537-0792", website: "https://fullmoonhouserestaurantinla.weebly.com/", open: "11:00AM", close: "12:00AM (Next day)", category: "Chinese", price: "$$")
business12.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Full_Moon_House.jpg"), filename: "Full_Moon_House.jpg")
business12.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/fullmoon2.jpg'), filename: 'fullmoon2.jpg')
# business12.photos.attach(io: open(''), filename: '')
business12.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/fullmoonmap.png'), filename: 'fullmoonmap.png')

business13 = Business.create!(name: "Hae Ha Heng Thai Bistro", address: "301 S Western Ave, Ste 209", city: "Los Angeles", state: "CA", zip_code: "90020", phone_number: "(213) 388-2407", website: "http://www.myhaehaheng.com", open: "11:00AM", close: "10:00PM", category: "Thai", price: "$$")
business13.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/HHH.jpg"), filename: "HHH.jpg")
business13.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/hhh2.jpg'), filename: 'hhh2.jpg')
# business13.photos.attach(io: open(''), filename: '')
business13.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/hhhmap.png'), filename: 'hhhmap.png')

business14 = Business.create!(name: "Lee's Key and Locksmith", address: "3120 3 8th St", city: "Los Angeles", state: "CA", zip_code: "90005", phone_number: "(213) 437-9531", website: "http://leeskeylocksmith.com", open: "9:00AM", close: "5:00PM", category: "Keys & Locksmiths", price: "$$")
business14.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Lee's_Key.jpg"), filename: "Lee's_Key.jpg")
business14.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/leeskey2.jpg'), filename: 'leeskey2.jpg')
# business14.photos.attach(io: open(''), filename: '')
business14.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/leesmap.png'), filename: 'leesmap.png')

business15 = Business.create!(name: "Community Auto Center", address: "6800 Melrose Ave", city: "Los Angeles", state: "CA", zip_code: "90038", phone_number: "(323) 932-6141", website: "https://www.communityautocenterca.com/", open: "8:00AM", close: "6:00PM", category: "Auto Repair", price: "$$")
business15.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Community_Auto.jpg"), filename: "Community_Auto.jpg")
business15.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/community2.jpg'), filename: 'community2.jpg')
# business15.photos.attach(io: open(''), filename: '')
business15.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/communitymap.png'), filename: 'communitymap.png')

business16 = Business.create!(name: "Thirsty Crow", address: "2939 W Sunset Blvd", city: "Los Angeles", state: "CA", zip_code: "90026", phone_number: "(323) 661-6007", website: "http://www.thirstycrowbar.com/", open: "5:00PM", close: "2:00AM (Next day)", category: "Bars", price: "$$")
business16.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Thirsty_Crow.jpg"), filename: "Thirsty_Crow.jpg")
business16.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/thirsty2.jpg'), filename: 'thirsty2.jpg')
# business16.photos.attach(io: open(''), filename: '')
business16.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/thirstymap.png'), filename: 'thirstymap.png')

business17 = Business.create!(name: "Bacari Silverlake", address: "3636 Sunset Blvd", city: "Los Angeles", state: "CA", zip_code: "90026", phone_number: "(323) 928-2098", website: "https://www.bacarisilverlake.com/", open: "5:00PM", close: "12:00AM (Next day)", category: "Mediterranean", price: "$$")
business17.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Bacari.jpg"), filename: "Bacari.jpg")
business17.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/bacari2.jpg'), filename: 'bacari2.jpg')
# business17.photos.attach(io: open(''), filename: '')
business17.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/bacarimap.png'), filename: 'bacarimap.png')

business18 = Business.create!(name: "Woodcat Coffee Bar", address: "1532 W Sunset Blvd", city: "Los Angeles", state: "CA", zip_code: "90026", phone_number: "(213) 537-0147", website: "http://www.woodcatcoffee.com", open: "6:30AM", close: "6:00PM", category: "Coffee & Tea", price: "$$")
business18.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Woodcat.jpg"), filename: "Woodcat.jpg")
business18.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/woodcat2.jpg'), filename: 'woodcat2.jpg')
# business18.photos.attach(io: open(''), filename: '')
business18.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/woodcatmap.png'), filename: 'woodcatmap.png')

business19 = Business.create!(name: "India's Restaurant", address: "4366 Fountain Ave", city: "Los Angeles", state: "CA", zip_code: "90029", phone_number: "(323) 912-9230", website: "http://www.indiasrestaurant.net/", open: "11:00AM", close: "1:00AM (Next day)", category: "Indian", price: "$")
business19.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/India's.jpg"), filename: "India's.jpg")
business19.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/indias2.jpg'), filename: 'indias2.jpg')
# business19.photos.attach(io: open(''), filename: '')
business19.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/indiamap.png'), filename: 'indiamap.png')

business20 = Business.create!(name: "Pho 87", address: "1019 N Broadway", city: "Los Angeles", state: "CA", zip_code: "90012", phone_number: "(323) 227-0758", open: "11:00AM", close: "8:00PM", category: "Vietnamese", price: "$$")
business20.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Pho87.jpg"), filename: "Pho87.jpg")
business20.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Pho87.jpg"), filename: 'Pho87.jpg')
# business20.photos.attach(io: open(''), filename: '')
business20.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/phomap.png'), filename: 'phomap.png')

business21 = Business.create!(name: "Granville", address: "8701 Beverly Blvd", city: "Los Angeles", state: "CA", zip_code: "90048", phone_number: "(424) 522-5161", website: "http://www.granville.net", open: "11:30AM", close: "9:00PM", category: "American", price: "$$")
business21.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Granville.jpg"), filename: "Granville.jpg")
business21.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/granville2.jpg"), filename: 'granville2.jpg')
# business21.photos.attach(io: open(''), filename: '')
business21.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/granvillemap.png'), filename: 'granvillemap.png')

business22 = Business.create!(name: "M Grill", address: "3832 Wilshire Blvd", city: "Los Angeles", state: "CA", zip_code: "90010", phone_number: "(213) 389-2770", website: "http://www.m-grill.com/", open: "5:30PM", close: "9:30PM", category: "Brazilian", price: "$$$$")
business22.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/MGrill.jpg"), filename: "MGrill.jpg")
business22.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/mgrill2.jpg'), filename: 'mgrill2.jpg')
# business22.photos.attach(io: open(''), filename: '')
business22.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/mgrillmap.png'), filename: 'mgrillmap.png')

business23 = Business.create!(name: "In-N-Out Burger", address: "7009 Sunset Blvd", city: "Los Angeles", state: "CA", zip_code: "90028", phone_number: "(800) 786-1000", website: "http://www.in-n-out.com", open: "10:30AM", close: "1:00AM (Next day)", category: "Fast Food", price: "$")
business23.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/InNOut.jpg"), filename: "InNOut.jpg")
business23.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/innout2.jpg'), filename: 'innout2.jpg')
# business23.photos.attach(io: open(''), filename: '')
business23.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/innoutmap.png'), filename: 'innoutmap.png')

business24 = Business.create!(name: "Oakobing", address: "3300 W 6th St", city: "Los Angeles", state: "CA", zip_code: "90020", phone_number: "(213) 387-1002", website: "https://www.oakobing.com", open: "1:00PM", close: "11:00PM", category: "Shaved Ice", price: "$$")
business24.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/Oakobing.jpg"), filename: "Oakobing.jpg")
business24.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/oakobing2.jpg'), filename: 'oakobing2.jpg')
# business24.photos.attach(io: open(''), filename: '')
business24.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/oakmap.png'), filename: 'oakmap.png')

business25 = Business.create!(name: "Milk Jar Cookies", address: "5466 Wilshire Blvd", city: "Los Angeles", state: "CA", zip_code: "90036", phone_number: "(323) 634-9800", website: "http://www.milkjarcookies.com/", open: "11:00AM", close: "4:00PM", category: "Desserts", price: "$")
business25.photos.attach(io: open("https://welp-dev-bkt.s3.us-west-1.amazonaws.com/MilkJar.jpg"), filename: "MilkJar.jpg")
business25.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/milkjar2.jpg'), filename: 'milkjar2.jpg')
# business25.photos.attach(io: open(''), filename: '')
business25.photos.attach(io: open('https://welp-dev-bkt.s3.us-west-1.amazonaws.com/milkjarmap.png'), filename: 'milkjarmap.png')


Review.destroy_all
review1 = Review.create!(rating: 5, body: "The staff was so kind. The bubble tea without the glass bottle was on the expensive side but I'm from NY so LA prices always seem a little higher than I'm used to. Still great quality.", user_id: user1.id, business_id: business1.id)
review2 = Review.create!(rating: 5, body: "The shop is super vibey and cute and perfect for a date or your afternoon pick-me-up. Can't wait to try the other drinks!", user_id: user2.id, business_id: business2.id)
review3 = Review.create!(rating: 4, body: "The food is amazing. Service is straight forward. It is a little pricey for what you get but the food is worth it for the experience.", user_id: user3.id, business_id: business3.id)
review4 = Review.create!(rating: 4, body: "I really liked the sweet and sour pork. It came with a dipping. The pork is super crispy. Highly recommend.", user_id: user1.id, business_id: business4.id)
review5 = Review.create!(rating: 3, body: "So we saw all the high reviews for this place.  I really don't understand all the hype.  The quality of the food is good, but really lacked flavor.", user_id: user2.id, business_id: business5.id)
review6 = Review.create!(rating: 5, body: "So impressed with their bossam! Light but well marinated and super tender unlike others I have had, a must try. Loved the kimchi stew, lots of sausage, spam, fish cake, and vegetables.", user_id: user3.id, business_id: business6.id)
review7 = Review.create!(rating: 5, body: "Al pastor tacos are a must here. Also tried their mulitas and huaraches. The huaraches are huge!", user_id: user1.id, business_id: business7.id)
review8 = Review.create!(rating: 5, body: "my boys. their specialty is adobada! just go for anything adobada!", user_id: user2.id, business_id: business8.id)
review9 = Review.create!(rating: 1, body: "Be aware takes very long time to get 4 burgers. I waited over 30mins for my order. They gave 2 people that order after me their food.", user_id: user3.id, business_id: business9.id)
review10 = Review.create!(rating: 5, body: "We also got the Alvarado thin crust pizza. Although both were good, the deep dish had more flavor and depth to it. I will definitely be back!", user_id: user1.id, business_id: business10.id)
review11 = Review.create!(rating: 5, body: "I love La Pergoletta, perfect date night spot. Recommend eating in the deli/downstairs area for the best ambiance. I've been twice recently and had the pappardelle puttanesca and spaghetti amatricana. Both delicious but I prefer the puttanesca", user_id: user2.id, business_id: business11.id)
review12 = Review.create!(rating: 4, body: "Overall, pretty good, and I'm sure it's even better when the food is fresh in the restaurant. If you're in Chinatown or DTLA, and want good Chinese food, I'd say this is your best bet.", user_id: user3.id, business_id: business12.id)
review13 = Review.create!(rating: 5, body: "Really great Thai place with lots of specials and drink options! This place has great service, food comes quick, happy hour 4-7pm everyday, weekday lunch specials, and lots of seating inside/outside. Free parking in the structure below too!", user_id: user1.id, business_id: business13.id)
review14 = Review.create!(rating: 5, body: "Super responsive.  Picked locked immediately and came immediately.  Called another locksmith and they were so slow to respond.  Definitely would use Lee's keys again", user_id: user2.id, business_id: business14.id)
review15 = Review.create!(rating: 5, body: "Community Auto Center is truly the best around! For any/all repairs that I can still make the drive to LA, I'll take it back to Community Auto. And the office cats are cuter than ever", user_id: user3.id, business_id: business15.id)
review16 = Review.create!(rating: 1, body: "Used to love this hole in the wall even though it's nearly impossible to get a drink because it's crowded and only 1-2 bartenders on shift at any time.", user_id: user1.id, business_id: business16.id)
review17 = Review.create!(rating: 5, body: "had such a wonderful evening here!! Teddy was by far the best server. All his recommendations were delicious and he was so joyous and helpful! Such beautiful atmosphere and food and quality service!!", user_id: user2.id, business_id: business17.id)
review18 = Review.create!(rating: 2, body: "went in and bought an almond/strawberry croissant, was delicious and Messy however the staff informed me that they do not carry utensils.", user_id: user3.id, business_id: business18.id)
review19 = Review.create!(rating: 5, body: "Lovely Indian dine-in place in the big city. We had the meals for two, which was delicious and excellent value as well", user_id: user1.id, business_id: business19.id)
review20 = Review.create!(rating: 5, body: "The pho was so light and delicious yet packed with so much flavor. I highly recommend adding sriracha and hoisin sauce to add on to the experience. The fish sauce was *chefs kiss* and the fried rolls (not too sure of their name) were the best.", user_id: user2.id, business_id: business20.id)
review21 = Review.create!(rating: 5, body: "Had a great time! Casey was the best waiter, such fun vibes! Loved the energy and super cute", user_id: user3.id, business_id: business21.id)
review22 = Review.create!(rating: 5, body: "All I can say is Wow. Everything you've heard about this place is true. Yes the servers bring over the meats to you. Yes the meats are absolutely scrumptious. It literally melts in your mouth.", user_id: user1.id, business_id: business22.id)
review23 = Review.create!(rating: 3, body: "I'm glad I got to try my very first burger after failing to have time while visiting Vegas in August. I do think this place is slightly overrated, but I did enjoy it.", user_id: user2.id, business_id: business23.id)
review24 = Review.create!(rating: 5, body: "This place is really yummy! My favorite was definitely the mango melon bingsoo. I opted to get the smaller single shaved ice portion as the large mango melon ice was meant to serve 4 people.", user_id: user3.id, business_id: business24.id)
review25 = Review.create!(rating: 5, body: "Quite possibly my #1 cookie shop in LA! I like meaty doughy cookies - full of buttery, ooey goodness.  Thin, crispy cookie lovers need not apply", user_id: user1.id, business_id: business25.id)
