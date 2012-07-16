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
  gem.homepage = "https://github.com/foxnewsnetwork/cookicutter"
  gem.license = "MIT"
  gem.summary = %Q{Simple macro that combines rail and jeweler to allow for simple rails gem building}
  gem.description = %Q{Rails-jeweler gem which just puts jeweler into the generator. Does not mess with any of the functionality of jeweler.}
  gem.email = "foxnewsnetwork@gmail.com"
  gem.authors = ["Yuki Nagato"]
  # dependencies defined in Gemfile
  gem.add_dependency "rails", "~>3.2.6}"
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
