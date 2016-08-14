ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do
  set :database, "sqlite3:db/database.db"
end
#THIS IS TO SET UP A CONNECTION TO OUR DATABASE.
#This sets up a connection to a sqlite3 database named "database.db", located in a folder called "db." 


require './app'