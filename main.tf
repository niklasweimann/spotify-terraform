terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.6"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}

data "spotify_track" "commit" {
  spotify_id = "5juRbbzBU4u0UmryWTfwXT"
}
data "spotify_track" "merge" {
  spotify_id = "6rLhKtukdcucS8aKeoA9oN"
}
data "spotify_track" "tags" {
  spotify_id = "6egGWdxN2PFpfZVTrRT1IW"
}
data "spotify_track" "stash" {
  spotify_id = "0M7qIbIfd9IQy68DibTqQ9"
}
data "spotify_track" "conflict" {
  spotify_id = "2ifs6hZXqHHXK27bRygiGH"
}
data "spotify_track" "clone" {
  spotify_id = "50CT4fbwsUDmoPrL0O1lyY"
}
data "spotify_track" "init" {
  spotify_id = "3bCl4QxdXOC1zFG2M1KTIP"
}
data "spotify_track" "add" {
  spotify_id = "20DInrAonQILzH7q8CvNVF"
}
data "spotify_track" "reset" {
  spotify_id = "0mqVZUM5rkUAgwLHc44Yve"
}
data "spotify_track" "status" {
  spotify_id = "7LmCKqXS6YXOBTF0v2LPRy"
}
data "spotify_track" "branch" {
  spotify_id = "2Sd7KgjJDMc7vhDe64nBpi"
}
data "spotify_track" "checkout" {
  spotify_id = "7oMsRUhHgUYkLx5HZPwkA3"
}
data "spotify_track" "push" {
  spotify_id = "2KVwlelhxKUy8LVV6JypH3"
}
data "spotify_track" "fetch" {
  spotify_id = "7fP8Byi4ZBPyWx9FQnMDy5"
}
data "spotify_track" "apply" {
  spotify_id = "11qwSJRR2XGOXi9ehSmZ4T"
}
data "spotify_track" "cherry_pick" {
  spotify_id = "1THRMMYcwYhgg7iCDtx1O7"
}
data "spotify_track" "blame" {
  spotify_id = "07nH4ifBxUB4lZcsf44Brn"
}
data "spotify_track" "revert" {
  spotify_id = "3zzTRjNCvt54sZ8YNmyVqG"
}
data "spotify_track" "rebase" {
  spotify_id = "2aYXfIIhvCRLujmOxwE3z6"
}

resource "spotify_playlist" "playlist" {
  name        = "GIT Playlist created by Terraform"
  description = "This playlist was created by Terraform. See: https://github.com/niklasweimann/spotify-terraform"
  public      = true

  tracks = [
    data.spotify_track.commit.spotify_id,
    data.spotify_track.merge.spotify_id,
    data.spotify_track.tags.spotify_id,
    data.spotify_track.stash.spotify_id,
    data.spotify_track.conflict.spotify_id,
    data.spotify_track.clone.spotify_id,
    data.spotify_track.init.spotify_id,
    data.spotify_track.add.spotify_id,
    data.spotify_track.reset.spotify_id,
    data.spotify_track.status.spotify_id,
    data.spotify_track.branch.spotify_id,
    data.spotify_track.checkout.spotify_id,
    data.spotify_track.push.spotify_id,
    data.spotify_track.fetch.spotify_id,
    data.spotify_track.apply.spotify_id,
    data.spotify_track.cherry_pick.spotify_id,
    data.spotify_track.blame.spotify_id,
    data.spotify_track.revert.spotify_id,
    data.spotify_track.rebase.spotify_id,
  ]
}
