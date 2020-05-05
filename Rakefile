# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'dotenv/load'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

# Load LD_LIBRARY_PATH
Dotenv.load

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new(:lint) do |task|
  task.patterns = ['lib/**/*.rb', 'spec/**/*.rb']
  task.fail_on_error = false
end

task default: :spec
