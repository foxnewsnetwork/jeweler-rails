
module Jeweler
	class JewelerGit
		@@git_conf = lambda do 
			output = {}
			filepath = File.expand_path( "~/.gitconfig", __FILE__)
			return output unless FileTest.exists?( filepath )
			File.open( filepath, "r" ) do |f|
				header_key = nil
				while line = f.gets	
					if line =~ /^\[\w+\]$/x
						header_key = line[/\w+/]
						output[header_key] = {}
					elsif line =~ /^.+=.+$/x
						item = line.split("=")
						key = item[0].strip
						val = item[1].strip
						output[header_key][key] = val
					end # if header line
				end # while
			end # File.open
			return output
		end.call # git_conf
		
		def self.configuration
			@@git_conf
		end # self.configuration
		
		def self.user_name
			@@git_conf["user"]["name"]
		end # self.user_name
		
		def self.user_email
			@@git_conf["user"]["email"]
		end # self.user_email
		
		def self.github_user
			@@git_conf["github"]["user"]
		end # self.github_name
		
	end # JewelerGit
end # Jeweler
