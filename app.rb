require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require "sinatra/cookies"

require 'open-uri'
require 'openssl'
require 'json'
require 'net/http'
require 'dotenv/load'
require 'sinatra/activerecord'
require 'pry'
require 'date'
require 'jwt'

require_relative './applemusic_api.rb'
require './base'
require './routes/api'

class MusicUserTokenGenerator < Base
   get '/' do
      erb :login
   end

   bind_router "/api", APIRouter
end