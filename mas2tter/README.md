Mas2tter
========
Mastodon-to-Twitter Mirrorbot Docker image implementation from
https://github.com/bitkeks/mastodon-to-twitter

This runs on a self-hosted environment and it only loads your latest
toots (i.e: starting from when you run the script) from your Mastodon
account and post them on Twitter.

For the sake of simplicity I just borrowed the `bot.py` from
bitkeks/mastodon-to-twitter, but the idea is to place this Dockerfile there in
a PR.

Running the service
-------------------

either if you build the image with

`docker build .`

or download the image from the docker hub, you can run the bot as follows.

The next example assumes the image is called `mas2tter`

`docker run -d -v /path/to/your/config.json:/usr/src/app/config.json mas2tter`
