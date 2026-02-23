Place.destroy_all

toronto = Place.new
toronto.name = "Toronto"
toronto.save

tokyo = Place.new
tokyo.name = "Tokyo"
tokyo.save

toronto_post1 = Entry.new
toronto_post1.description = "I went to the CN Tower with my friends. It was a sunny day in Toronto. It was very crowded at the CN Tower. It was fun."
toronto_post1.occurred_on = "2026-02-18"
toronto_post1.place_id = toronto.id
toronto_post1.title = "CN Tower!"
toronto_post1.save

toronto_post2 = Entry.new
toronto_post2.description = "A group of friends went to a very famous local Thai food resturant. The food was absolutely amazing!"
toronto_post2.occurred_on = "2026-02-20"
toronto_post2.place_id = toronto.id
toronto_post2.title = "Thai Food Night :)"
toronto_post2.save

tokyo_post1 = Entry.new
tokyo_post1.description = "I went to a piggy cafe in Tokyo. There were 10 pigs in total. They were super cute, and they loved us."
tokyo_post1.occurred_on = "2024-06-05"
tokyo_post1.place_id = tokyo.id
tokyo_post1.title = "Cafe!!!"
tokyo_post1.save

tokyo_post2 = Entry.new
tokyo_post2.description = "It was a rainy day, but we still decided to go to the Fuji mountain. We couldn't see anything when we first got there, but it got better towards the end of the day."
tokyo_post2.occurred_on = "2024-06-07"
tokyo_post2.place_id = tokyo.id
tokyo_post2.title = "Fuji Mountain. could be better :("
tokyo_post2.save
