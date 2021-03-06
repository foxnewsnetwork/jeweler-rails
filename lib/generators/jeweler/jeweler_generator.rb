module Jeweler
	class JewelerGenerator < Rails::Generators::NamedBase
		source_root File.expand_path('../templates', __FILE__)
		desc "Setups jeweler functionality in your current rails app to help you " <<
			"build your rails gem"
		namespace :jeweler
		require File.expand_path('../../../jeweler_rails/jeweler_git',__FILE__)
		def copy_rakefile
			template "Rakefile", "lib/tasks/jeweler.rake"
		end # copy_rakefile
		
		def copy_document
			copy_file ".document", ".document"
		end # copy_document
		
		def create_namedir
			empty_directory "lib/#{file_name}"
		end # create_namedir

		def create_gemlib
			create_file "lib/#{file_name}.rb" do
				"# Write your gem code in here!"
			end # create_file
		end # create_gemlib
				
		def create_bin
			empty_directory "bin"
		end # create_bin
		
		def inject_gemfile
			gem_group :development, :test do
				gem "shoulda", ">= 0"
				gem "rdoc", "~> 3.12"
				gem "bundler", "~> 1.0.0"
				gem "jeweler", "~> 1.8.4"
			end # gem_group
		end # inject_gemfile
		
		# TODO: raise exceptions for when the user hasn't told git about himself
		def user_name
			Jeweler::JewelerGit.configuration["user"]["name"]
		end # user_name
		
		def github_user
			Jeweler::JewelerGit.configuration["github"]["user"]
		end # github_user
		
		def homepage_name
			"https://github.com/" + github_user + "/#{file_name}"
		end # homepage_name
		
		def user_email
			Jeweler::JewelerGit.configuration["user"]["email"]
		end # user_email
		
		def rails_version
			Rails.version
		end # rails_version
		
		def show_readme
			readme( "README" )
		end # show_readme
	end # JewelerGenerator
end # Jeweler
