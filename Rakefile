require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << "spec"
  t.pattern = "spec/**/*_spec.rb"
end
desc "run tests"
task  :default => :test