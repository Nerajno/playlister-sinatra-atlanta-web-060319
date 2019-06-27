# Add seed data here. Seed your database with `rake db:seed`

james = Artist.create(name: "James Brown")
frank = Artist.create(name: "Frank Sinatra")
maya = Artist.create(name: "Maya Angelou")


spoken = Genre.create(name: "Spoken")
jazz = Genre.create(name: "Jazz")
soul = Genre.create(name: "Soul")

one = Song.create(name: "Say it Loud", artist_id: james.id, genre_id: soul.id)
two = Song.create(name: "Mack the 9th", artist_id: frank.id, genre_id: jazz.id)
three = Song.create(name: "Cage Bird", artist_id: maya.id, genre_id: spoken.id)
