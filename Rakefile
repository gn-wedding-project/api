#!/usr/bin/env rake
# frozen_string_literal: true

require 'sinatra/activerecord/rake' # Require the Sinatra ActiveRecord rake tasks
require 'rspec/core/rake_task' # Require RSpec rake tasks

namespace :db do
  task :load_config do
    require './app/app' # Load the Sinatra application configuration
  end
end
RSpec::Core::RakeTask.new(:test) # Define a Rake task for running specs
