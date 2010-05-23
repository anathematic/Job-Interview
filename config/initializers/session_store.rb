# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_job-interview_session',
  :secret      => '400d03ae9dadbe31252399011ba42c12bba14b4deda3cdcee7dbc7c822e6b081bfac31279a073566eed1b64b52108d45d446e7b2a9e52e85c4cd914fcd736fca'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
