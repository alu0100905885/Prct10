require "bundle/gem_task"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec