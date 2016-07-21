# frozen_string_literal: true
require 'rubygems'
require 'yaml'
require 'rake/testtask'
require 'rake'
gem 'ci_reporter'

def exclude_inactive_tags
  '--tags ~@wip'
end

Rake::TestTask.new(:unit_tests) do |t|
  t.warning = false
  t.libs << 'test'
  t.test_files = FileList['test/**/*_test.rb']
end

task :ci_cleanup do
  require 'minitest/ci'
  Minitest::Ci.new.start
end
task :test => %w[ci_cleanup unit_tests]
