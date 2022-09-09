# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create!(email: "meme123@gmail.com", name: "Vince", password: "123456", password_confirmation: "123456")
user2 = User.create!(email: "meme124@gmail.com", name: "Me", password: "123456", password_confirmation: "123456")

meme5 = Meme.new(title: "RGB Life", description: "Did you just assume my OS?", category: "RGB", price: "500", user: user2)
meme5.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534054/production/2v4w4nrzgm60t3k72di81ob8zkff.jpg"), filename: "MemeRGB.jpg", content_type: "image/jpg")
meme5.save!

meme = Meme.new(title: "Backend vs. Frontend", description: "One for show, one for function. Both clearly very yummy.", category: "Full Stack", price:"200", user: user2 )
meme.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534051/production/41orckdl16smw944wcehaq0vy8ki.jpg"), filename: "user: user2.jpg", content_type: "image/jpg")
meme.save!

meme1 = Meme.new(title: "Bell Curve of Knowledge", description: "Related: The Dunning Kruger Effect", category: "Imposter Syndrome", price:"113", user: user2 )
meme1.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534051/production/po5o802q9b0sdy831l26bvxehzir.jpg"), filename: "MemeBigBrainTime.jpg", content_type: "image/jpg")
meme1.save!

meme2 = Meme.new(title: "I am the Danger", description: "If you ARE the origin master there are no conflicts.", category: "API", price:"880", user: user2 )
meme2.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534052/production/4jf1x7fhkjq145xybsf3yzmrce9l.jpg"), filename: "MemeDocumentation.jpg", content_type: "image/jpg")
meme2.save!

meme3 = Meme.new(title: "Why won't it work?", description: "Possibly related to showerthoughts", category: "Sleep", price:"10", user: user2 )
meme3.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534053/production/i7c3cc2z5fgosxer2li58132v3kt.webp"), filename: "MemeSleep.webp", content_type: "image/webp")
meme3.save!

meme4 = Meme.new(title: "No", description: "It's really cool being a dev! Up until everyone and your grandmother suddenly want to pitch", category: "Family & Friends", price:"41", user: user2 )
meme4.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534053/production/ox7gam42d6bji8yh6983lrcvrdjj.jpg"), filename: "MemeNo.jpg", content_type: "image/jpg")
meme4.save!

meme6 = Meme.new(title: "SQL isn't a real language", description: "What's not real can't hurt me", category: "SQL", price: "5", user: user2)
meme6.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534054/production/gln4e471089wv2e2ecqsunsr44yg.jpg"), filename: "MemeSQL.jpg", content_type: "image/jpg")
meme6.save!

meme7 = Meme.new(title: "Professor C++", description: "WHY DO I OPEN SO MANY TABS", category: "Research", price: "1000", user: user2)
meme7.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534054/production/08k65m0x4t7nfueva4mef4ye9np9.webp"), filename: "MemeStackoverflow.png", content_type: "image/png")
meme7.save!

meme8 = Meme.new(title: "Online Tutorials", description: "Look okay you wouldn't get it, tutorials are just very tempting", category: "Research", price: "10000", user: user2)
meme8.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534055/production/iue6dmb2yz2ie6ms2nklob9607z2.jpg"), filename: "MemeStranded.jpg", content_type: "image/jpg")
meme8.save!

meme9 = Meme.new(title: "Unsheathe", description: "I'm a professional.", category: "Imposter Syndrome", price: "2500", user: user2)
meme9.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534055/production/cnt6yxte15bdl2hm5m7dx2vtgm2r.png"), filename: "MemeSword.png", content_type: "image/png")
meme9.save!
