# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'

task default: :spec

Rake::TestTask.new(:spec) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end
