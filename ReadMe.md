# Terraform for GIT Playlist

## How to run
1. Create .env file based on this template:
    ```
    SPOTIFY_CLIENT_REDIRECT_URI=http://localhost:27228/spotify_callback
    SPOTIFY_CLIENT_ID=
    SPOTIFY_CLIENT_SECRET=
    ```
1. Run *docker-compose up*

1. Create terraform.tfvars
    ```
    spotify_api_key = "<key from auth proxy>"
    ```

1. Run *terraform init*
1. Run *terraform apply*

## Based on:
Original Spotify playlist: [Songs about Git](https://open.spotify.com/playlist/76jbtf4wR7Am0zhHT0ssVG)

Terraform Provider: https://learn.hashicorp.com/tutorials/terraform/spotify-playlist