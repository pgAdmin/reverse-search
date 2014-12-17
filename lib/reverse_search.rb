module Reverse
	class Search
		def self.find(regxp)
			path = ""
			path = "/home/"+ENV['USER']+"/.bash_history" if `uname -s`.gsub("\n", "")=="Linux"  
			path = "/Users/"+ENV['USER']+"/.bash_history" if `uname -s`.gsub("\n", "")=="Darwin"  
			file = File.open(path, "r")
			all_lines = file.readlines
			regexp = Regexp.new regxp
			puts all_lines.select {|line| line.gsub("\n", "") =~ (regexp)}
		end
	end
end
