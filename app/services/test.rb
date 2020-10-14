# !/bin/yotube-dl
require 'youtube-dl'
class Test 
	 def self.download_video(url)
	 	options = {
	 		format: 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best',
	 		output: 'abc'
	 	}
		 YoutubeDL.download(url, options)	
	end
end
