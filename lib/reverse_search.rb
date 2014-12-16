module Reverse
	class Search
		def self.find(regxp) 
			file = File.open("/home/"+ENV['USER']+"/.bash_history", "r")
			all_lines = file.readlines
			regexp = Regexp.new regxp
			puts all_lines.select {|line| line.gsub("\n", "") =~ (regexp)}
		end
	end
end
