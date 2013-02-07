require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*_test.rb']
end

desc "Test for padlock"
task :padlock_test => [:padlock_clean, :test] do
  contents = File.open('tmp/padlock.log', 'r') { |f| f.read }
  p contents
  raise "FAIL" if contents
end

desc "Clean padlock logs"
task :padlock_clean do
  File.delete('tmp/padlock.log')
end