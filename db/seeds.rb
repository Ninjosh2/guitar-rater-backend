user = User.first

g1 = Guitar.find_or_create_by(description: "This Fusion comes customized right from the factory with custom black covered Seymour Duncan JB & ’59 Pickups with push/pull on each tone knob for  “Coil-tapping” which converts a humbucker into a single coil pickup, giving you endless options and combinations of sound.", name: "Jericho Fusion Walnut EverTune 6", url: "https://i.redd.it/7sgbbpf8g8031.jpg")

g2 = Guitar.find_or_create_by(description: "The Alhambra Dreadnought model Acoustic Guitar has a tone and finish that is difficult to equal in rival models. It is a very comfortable guitar to play: when you first pick it up, it feels as if you’ve been playing it your whole life. It is characterized by the superb quality of the harmonious, balanced sound across the fingerboard. Powerful resonance.", name: "Alhambra Dreadnought Acoustic Guitar", url: "https://www.guitarfromspain.com/6957-large_default/alhambra-dreadnought-model-acoustic-guitar.jpg")

g3 = Guitar.find_or_create_by(description: "Squier presents one of its most distinctive instruments-the deeply resounding Vintage Modified Baritone Jazzmaster. Tuned A to A and featuring a comfortable 30 scale length, it lends a rumbling character to your sound, making it the perfect 'secret weapon. With it's comfortable C- shaped neck and modern 9.5-radius fingerboard, this instrument offers a singularly exciting Squier playing experience.", name: "Squier Vintage Modified Baritone Jazzmaster Black w/ Rosewood Fretboard", url: "https://cdn.shopify.com/s/files/1/0358/1375/2967/products/030-4000-506_grande_600x_da76f779-4f06-4b39-b68d-c8698fdb8283_548x.jpg?v=1593142845")

r1 = g1.reviews.find_or_create_by(comments: "This guitar is insane. I love how it plays. I want to buy another one!", user_id: user.id)

r2 = g2.reviews.find_or_create_by(comments: "It's in prestine condition. I can't believe there's only 50 ever made in the world!", user_id: user.id)

r3 = g3.reviews.find_or_create_by(comments: "I bought this back when they first came out. I'm super happy with my purchase!", user_id: user.id)