# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create([
  {
    name: "Añoranza", description: "Cancón", content_type: 1, artist: "Vicente Viel", year: 2019, url: "https://open.spotify.com/embed/track/4G6t6rJwxH2HgqCVQoeJbU"
  },
  {
    name: "Añoranza2", description: "Cancón", content_type: 1, artist: "Vicente Viel", year: 2019, url: "https://open.spotify.com/embed/track/4G6t6rJwxH2HgqCVQoeJbU"
  },
  {
    name: "Añoranza3", description: "Cancón", content_type: 1, artist: "Vicente Viel", year: 2019, url: "https://open.spotify.com/embed/track/4G6t6rJwxH2HgqCVQoeJbU"
  },
  {
    name: "soundCloud", description: "Cancón", content_type: 2, artist: "Vicente Viel", year: 2019, url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/844434610&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
  },
])
