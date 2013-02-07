require 'rake/testtask'
require 'rack/padlock'
load 'tasks/rack-padlock.rake'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*_test.rb']
end