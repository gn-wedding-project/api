# frozen_string_literal: true

require 'sinatra/activerecord'
require 'dotenv/load'
Dotenv.load

# Database settings using environment variables
set :database, { adapter: 'postgresql', encoding: 'unicode', pool: 5,
                 database: ENV['DB_DATABASE'], username: ENV['DB_USERNAME'],
                 password: ENV['DB_PASSWORD'], host: ENV['DB_HOST'] }
