module Jeweler
	class JewelerGenerator < Rails::Generators::NamedBase
		source_root File.expand_path('../templates', __FILE__)
		desc "Setups jeweler functionality in your current rails app to help you " <<
			"build your rails gem"
		namespace :jeweler
		def copy_rakefile
			template "Rakefile", "lib/tasks/jeweler.rake"
		end # copy_rakefile
		
		def copy_document
			copy_file ".document", ".document"
		end # copy_document

		def create_gemlib
			create_file "lib/#{file_name}.rb" do
				"# Write your gem code in here!"
			end # create_file
		end # create_gemlib
				
		def create_bin
			directory "bin"
		end # create_bin
		
		def inject_gemfile
			insert_into_file "Gemfile", %Q(group :development do
  gem "shoulda", ">= 0"
  gem "rdoc", "~> 3.12"
  gem "bundler", "~> 1.0.0"
  gem "jeweler", "~> 1.8.4"
end # dev group), :after => "source 'https://rubygems.org'\n"
		end # inject_gemfile
		
		def rails_version
			Rails.version
		end # rails_version
		
		def show_readme
			readme( "REAMDE" )
		end # show_readme
	end # JewelerGenerator
end # Jeweler
