# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

meme = Meme.new(title: "Meme Back vs Front", description: "Front-end development focuses on the visual aspects of a website the part that users see and interact with. Back-end development comprises a site's structure, system, data, and logic.", category: "Funny", price:"200", user_id:"1" )
meme.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534051/production/41orckdl16smw944wcehaq0vy8ki.jpg"), filename: "MemeBackvsFront.jpg", content_type: "image/jpg")
meme.save!

meme1 = Meme.new(title: "Meme Big BrainTime", description: "The meme “its big brain time” means that it's time to divert all your focus and energy into a task. The task needs to be something mentally challenging, such as learning calculus. Or it could be something where you are out of your comfort zone, and you need to concentrate on the task to complete it.", category: "Funny", price:"113", user_id:"1" )
meme1.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534051/production/po5o802q9b0sdy831l26bvxehzir.jpg"), filename: "MemeBigBrainTime.jpg", content_type: "image/jpg")
meme1.save!

meme2 = Meme.new(title: "Meme Documentation", description: "Meme Documentation is an internet meme research blog that explains the meaning behind various memes circulating Tumblr and curates notable examples of such memes for archival purposes. While its objective is comparable to other meme research collectives like Know Your Meme and Encyclopedia Dramatica, the site specifically focuses on covering viral media and memes that have originated from the microblogging community since its foundation in January 2015.", category: "Funny", price:"880", user_id:"1" )
meme2.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534052/production/4jf1x7fhkjq145xybsf3yzmrce9l.jpg"), filename: "MemeDocumentation.jpg", content_type: "image/jpg")
meme2.save!

meme3 = Meme.new(title: "Meme Sleep", description: "These sleep memes are funny, relatable and true.", category: "Funny", price:"10", user_id:"1" )
meme3.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534053/production/i7c3cc2z5fgosxer2li58132v3kt.webp"), filename: "MemeSleep.webp", content_type: "image/webp")
meme3.save!

meme4 = Meme.new(title: "Meme No", description: "The meaning of MEMENTO is something that serves to warn or remind.", category: "Funny", price:"41", user_id:"1" )
meme4.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534053/production/ox7gam42d6bji8yh6983lrcvrdjj.jpg"), filename: "MemeNo.jpg", content_type: "image/jpg")
meme4.save!

meme5 = Meme.new(title: "Software Engineer", description: "Making fun of software engineer with rainbow computer.", category: "Funny", price: "500", user_id: "1")
meme5.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534054/production/2v4w4nrzgm60t3k72di81ob8zkff.jpg"), filename: "MemeRGB.jpg", content_type: "image/jpg")
meme5.save!

meme6 = Meme.new(title: "Junior Developer", description: "Self esteem of junior developer.", category: "LOL", price: "5", user_id: "1")
meme6.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534054/production/gln4e471089wv2e2ecqsunsr44yg.jpg"), filename: "MemeSQL.jpg", content_type: "image/jpg")
meme6.save!

meme7 = Meme.new(title: "Stack overflow keyword", description: "Trying to figure out what the keyword was for right page on stack overflow.", category: "LMAO", price: "1000", user_id: "1")
meme7.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534054/production/08k65m0x4t7nfueva4mef4ye9np9.webp"), filename: "MemeStackoverflow.png", content_type: "image/png")
meme7.save!

meme8 = Meme.new(title: "HELP!", description: "Getting rescued by claiming to teach JavaScript in 5 minutes.", category: "LOL", price: "10000", user_id: "1")
meme8.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534055/production/iue6dmb2yz2ie6ms2nklob9607z2.jpg"), filename: "MemeStranded.jpg", content_type: "image/jpg")
meme8.save!

meme9 = Meme.new(title: "Sword Bug", description: "Finding a new bug after fixing the last.", category: "LMAO", price: "2500", user_id: "1")
meme9.photo.attach(io: URI.open("https://res.cloudinary.com/dagrxpx1a/image/upload/v1662534055/production/cnt6yxte15bdl2hm5m7dx2vtgm2r.png"), filename: "MemeSword.png", content_type: "image/png")
meme9.save!
