# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

ENV['LD_LIBRARY_PATH'] = './ext'

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new(:lint) do |task|
  task.patterns = ['lib/**/*.rb', 'spec/**/*.rb']
  task.fail_on_error = false # I'd rather see all of them
end

task default: :spec
