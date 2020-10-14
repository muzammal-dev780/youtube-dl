# Download Videos from Youtube in Ruby
# By: Sheharyar Naseer

require 'open-uri'
require 'cgi'

def tube(id)
    'https://youtube.com/watch?v=' + id
end

def get_video_data(id)
    CGI.parse open(tube(id)).read
end

def get_video_streams(id)
		puts id
		streams = get_video_data(id)
        puts '--------------------'*10
		puts streams
        puts '--------------------'*10

    streams = get_video_data(id).split(',')
    streams.map do |s|
        x = CGI.parse s
        x.each do |k,v|
            if k == 'type'
                x[k] = v.first
            else
                x[k] = v.first
            end
        end
    end
end


# Get Videos

video_id = "rUWxSEwctFU" 
streams  = get_video_streams(video_id)

puts "### Total #{streams.count} streams available:\n\n"
streams.each_with_index do |s,i|
    puts "Stream #{i+1}",
         "-------------",
         "Quality: #{s['quality']}",
         "Type: #{s['type'].first}",
         "URL:  #{s['url'][0..70]}......\n\n"
end

puts "(Modify the code to get full urls)"
