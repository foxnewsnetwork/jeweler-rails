module Jeweler
	class JewelerGenerator < Rails::Generators::NamedBase
		source_root File.expand_path('../templates', __FILE__)
		desc "Setups jeweler functionality in your current rails app to help you " <<
			"build your rails gem"
		
		def copy_rakefile
			copy_file "Rakefile", "lib/tasks/jeweler.rake"
		end # copy_rakefile
		
		def copy_document
			copy_file ".document", ".document"
		end # copy_document
		
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
		
		def show_readme
			readme( "REAMDE" )
		end # show_readme
	end # JewelerGenerator
end # Jeweler
