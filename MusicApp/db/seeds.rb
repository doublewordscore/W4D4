
User.destroy_all
user1 = User.create(email: "harrypotter@hogwarts.com", password: "harryp")
user2 = User.create(email: "hermionegranger@hogwarts.com", password: "hermione")
user3 = User.create(email: "ronweasley@hogwarts.com", password: "ronnyw")
user4 = User.create(email: "hagrid@hogwarts.com", password: "hagrid")

Band.destroy_all
band1 = Band.create(name: "Cocteau Twins")
band2 = Band.create(name: "Future Islands")
band3 = Band.create(name: "The National")
band4 = Band.create(name: "Tune-Yards")

Album.destroy_all
album1 = Album.create(name: "Singles", band_id: 2)
album2 = Album.create(name: "On the Water", band_id: 2)
album3 = Album.create(name: "In Evening Air", band_id: 2)
album4 = Album.create(name: "Nikki Nack", band_id: 4)
album5 = Album.create(name: "Whokill", band_id: 4)
album6 = Album.create(name: "Heaven Or Last Vegas", band_id: 1)
album7 = Album.create(name: "Blue Bell Knoll", band_id: 1)

Track.destroy_all
track1 = Track.create(name: "Before the Bridge", album_id: 2)
track2 = Track.create(name: "The Great Fire", album_id: 2)
track3 = Track.create(name: "Open", album_id: 2)
track4 = Track.create(name: "Seasons", album_id: 1)
track5 = Track.create(name: "Pitch the Baby", album_id: 6)
track6 = Track.create(name: "Fifty Fifty Clown", album_id: 6)
