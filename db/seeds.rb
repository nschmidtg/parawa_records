# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create([
  {
    id: 1, name: "Añoranza", description: "Lorem Ipsum", content_type: 1, artist: "Vicente Viel", year: 2019, url: "https://open.spotify.com/embed/track/4G6t6rJwxH2HgqCVQoeJbU"
  },
  {
    id: 2, name: "Frágil", description: "Cancón", content_type: 1, artist: "Vicente Viel", year: 2019, url: "https://open.spotify.com/embed/track/4G6t6rJwxH2HgqCVQoeJbU"
  },
  {
    id: 3, name: "Snow", description: "Cancón", content_type: 1, artist: "Vicente Viel", year: 2019, url: "https://open.spotify.com/embed/track/4G6t6rJwxH2HgqCVQoeJbU"
  },
  {
    id: 4, name: "soundCloud", description: "Cancón", content_type: 2, artist: "Vicente Viel", year: 2019, url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/844434610&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
  },
])
Category.create([
  {
    id: 1, name: "Mezcla"
  },
  {
    id: 2, name: "Masterización"
  }
])
c1 = Category.find(1)
c1.posts << Post.where(id: [2, 3])
c1.save

c2 = Category.find(2)
c2.posts << Post.where(id: [1, 4])
c2.save