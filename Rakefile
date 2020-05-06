# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'dotenv/load'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

# You must create a file at  ./.env.
# This will point to `librollenspielsache.so` (or `.dylib`) on your system.
# Example contents:
# ```
# LD_LIBRARY_PATH="${HOME}/path/to/librollenspielsache/dist"
# ````
Dotenv.load

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new(:lint) do |task|
  task.patterns = ['lib/**/*.rb', 'spec/**/*.rb']
  task.fail_on_error = false # I'd rather see all of them
end

task default: :spec
