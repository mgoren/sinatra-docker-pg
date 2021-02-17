require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require 'pry'
require './lib/album'
require "pg"

DB = PG.connect({:dbname => "record_store"})

get '/' do
  "Hello world!"
end