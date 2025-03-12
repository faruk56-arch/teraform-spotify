
data "spotify_search_track" "eminem" {
    artist = "Eminem"
  
}
resource "spotify_playlist" "eminem_playlist" {
   name = "eminem Playlist"
   tracks =  [
    data.spotify_search_track.eminem.tracks[0].id,
    data.spotify_search_track.eminem.tracks[1].id,
    data.spotify_search_track.eminem.tracks[2].id,
    data.spotify_search_track.eminem.tracks[3].id,
    data.spotify_search_track.eminem.tracks[4].id,
    
    ]
  
}

data "spotify_search_track" "taylor_swift" {
    artist = "Taylor Swift"
  
}

resource "spotify_playlist" "taylor_swift_playlist" {
   name = "Taylor Swift Playlist"
   tracks =  [
    data.spotify_search_track.taylor_swift.tracks[0].id,
    data.spotify_search_track.taylor_swift.tracks[1].id,
    data.spotify_search_track.taylor_swift.tracks[2].id,
    data.spotify_search_track.taylor_swift.tracks[3].id,
    
    ]
  
}

data "spotify_search_track" "Arijit_Singh" {
    artist = "Arijit Singh"
}
resource "spotify_playlist" "Arijit_sing_playlist" {
    name = "Arijit Singh Playlist"
    tracks =  [
     data.spotify_search_track.Arijit_Singh.tracks[0].id,
     data.spotify_search_track.Arijit_Singh.tracks[1].id,
     data.spotify_search_track.Arijit_Singh.tracks[2].id,
     data.spotify_search_track.Arijit_Singh.tracks[3].id,
     data.spotify_search_track.Arijit_Singh.tracks[4].id,
     data.spotify_search_track.Arijit_Singh.tracks[5].id,
     data.spotify_search_track.Arijit_Singh.tracks[6].id,
     data.spotify_search_track.Arijit_Singh.tracks[7].id,
     data.spotify_search_track.Arijit_Singh.tracks[8].id,
     data.spotify_search_track.Arijit_Singh.tracks[9].id,
     
    ]
  
}

# optimised code
# variable "artists" {
#   type    = list(string)
#   default = ["Eminem", "Taylor Swift", "Arijit Singh"]
# }

# locals {
#   max_tracks = 5  # Define the maximum number of tracks to fetch
# }

# # Loop over each artist to create a data block for track search
# data "spotify_search_track" "artists" {
#   for_each = toset(var.artists)
#   artist   = each.value
# }

# # Create playlists dynamically for each artist
# resource "spotify_playlist" "playlists" {
#   for_each = toset(var.artists)
#   name     = "${each.value} Playlist"
#   tracks   = slice(data.spotify_search_track.artists[each.value].tracks[*].id, 0, local.max_tracks)
# }
