require 'bundler'
Bundler.require
Dotenv.load

require './app'
MusicUserTokenGenerator.run!
