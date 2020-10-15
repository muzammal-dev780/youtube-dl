class Test 
	 def self.download_video(url)
	 	# options = {
	 	# 	format: 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best',
		# 	 output: 'app/assets/videos/%(title)s',
			 
	 	# }
		#  YoutubeDL.download(url, options)
		system("youtube-dl -f 248 #{url}")
	end
# 	def self.download_with_lib_video(url)
# 		options = {
# 			format: 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best',
# 			output: 'abc'
# 		}
# 		system("youtube-dl 'https://www.youtube.com/watch?v=gRhmbfwCdqo'")
#    end
end
