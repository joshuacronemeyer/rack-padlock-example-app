require 'rake/testtask'
require 'rack/padlock'
load 'tasks/rack-padlock.rake'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*_test.rb']
end

desc "setup application environment"
task :environment do
  require './hi'
  Rack::Padlock.application = HiApp
  Rack::Padlock.padlock_uris = ["/secure", "/insecure"]
end
  