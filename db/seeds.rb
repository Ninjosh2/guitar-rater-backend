user = User.first

g1 = Guitar.find_or_create_by(description: "This is a very unique model. I enjoy playing this!", name: "Jericho", url: "https://reverb.com/item/34880407-jericho-cb-raven-baritone-2020")

g2 = Guitar.find_or_create_by(description: "This guitar is a work of art. Amazing!", name: "2020 Henderson OM-41 Brazilian Rosewood/Adirondack Spruce", url: "https://reverb.com/item/38271592-2020-henderson-om-41-brazilian-rosewood-adirondack-spruce")

g3 = Guitar.find_or_create_by(description: "Words can't describe how cool this thing is!", name: "Squier Vintage Modified Baritone Jazzmaster Black w/ Rosewood Fretboard", url: "https://reverb.com/item/36456963-squier-vintage-modified-baritone-jazzmaster-black-w-rosewood-fretboard")

r1 = user.reviews.find_or_create_by(comments: "This guitar is insane. I love how it plays. I want to buy another one!")

r2 = user.reviews.find_or_create_by(comments: "It's in prestine condition. I can't believe there's only 50 ever made in the world!")

r3 = user.reviews.find_or_create_by(comments: "I bought this back when they first came out. I'm super happy with my purchase!")