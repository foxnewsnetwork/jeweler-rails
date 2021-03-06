# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "jeweler_rails"
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yuki Nagato"]
  s.date = "2012-07-16"
  s.description = "All of functions of the jeweler now rolled into the rails generator. Hopefully, this will make generating rails gems from within rails apps a little easier."
  s.email = "foxnewsnetwork@gmail.com"
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/assets/images/rails.png",
    "app/assets/javascripts/application.js",
    "app/assets/stylesheets/application.css",
    "app/controllers/application_controller.rb",
    "app/helpers/application_helper.rb",
    "app/mailers/.gitkeep",
    "app/models/.gitkeep",
    "app/views/layouts/application.html.erb",
    "config.ru",
    "config/application.rb",
    "config/boot.rb",
    "config/database.yml",
    "config/environment.rb",
    "config/environments/development.rb",
    "config/environments/production.rb",
    "config/environments/test.rb",
    "config/initializers/backtrace_silencers.rb",
    "config/initializers/inflections.rb",
    "config/initializers/mime_types.rb",
    "config/initializers/secret_token.rb",
    "config/initializers/session_store.rb",
    "config/initializers/wrap_parameters.rb",
    "config/locales/en.yml",
    "config/routes.rb",
    "db/seeds.rb",
    "doc/README_FOR_APP",
    "lib/assets/.gitkeep",
    "lib/generators/jeweler/USAGE",
    "lib/generators/jeweler/jeweler_generator.rb",
    "lib/generators/jeweler/templates/.document",
    "lib/generators/jeweler/templates/README",
    "lib/generators/jeweler/templates/Rakefile",
    "lib/jeweler_rails.rb",
    "lib/jeweler_rails/jeweler_git.rb",
    "lib/tasks/.gitkeep",
    "lib/tasks/jeweler.rake",
    "log/.gitkeep",
    "public/404.html",
    "public/422.html",
    "public/500.html",
    "public/favicon.ico",
    "public/index.html",
    "public/robots.txt",
    "script/rails",
    "test/fixtures/.gitkeep",
    "test/functional/.gitkeep",
    "test/integration/.gitkeep",
    "test/performance/browsing_test.rb",
    "test/test_helper.rb",
    "test/unit/.gitkeep",
    "vendor/assets/javascripts/.gitkeep",
    "vendor/assets/stylesheets/.gitkeep",
    "vendor/plugins/.gitkeep"
  ]
  s.homepage = "https://github.com/foxnewsnetwork/jeweler-rails"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "Jeweler macros for making rails gems"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["= 3.2.6"])
      s.add_runtime_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_runtime_dependency(%q<sqlite3>, [">= 0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<rails>, [">= 3.0.10"])
    else
      s.add_dependency(%q<rails>, ["= 3.2.6"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.0.10"])
    end
  else
    s.add_dependency(%q<rails>, ["= 3.2.6"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.0.10"])
  end
end

