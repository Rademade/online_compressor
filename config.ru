require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'yui/compressor'

require './config/compressor.rb'
require './app.rb'

set :environment, :production

run Sinatra::Application