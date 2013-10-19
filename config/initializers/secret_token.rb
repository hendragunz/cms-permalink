# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Cms::Application.config.secret_key_base = 'badac1bd1ee16c87c434c42d74a835e7660870ad12c6df974b1b226ee51ff3f730c7d1baaaab72d00fdbe7280a589023bacd8c06683ae73e1b9a6793ae4b5ebb'
