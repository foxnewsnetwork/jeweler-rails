# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "jeweler_rails"
  gem.homepage = "https://github.com/foxnewsnetwork/jeweler-rails"
  gem.license = "MIT"
  gem.summary = %Q{Jeweler macros for making rails gems}
  gem.description = %Q{All of functions of the jeweler now rolled into the rails generator. Hopefully, this will make generating rails gems from within rails apps a little easier.}
  gem.email = "foxnewsnetwork@gmail.com"
  gem.authors = ["Yuki Nagato"]
  # dependencies defined in Gemfile
  gem.add_dependency "rails", ">=3.0.10"
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end


task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "jeweler_rails #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
