require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = "test/*Spec.rb"
end