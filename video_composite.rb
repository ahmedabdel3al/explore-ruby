require 'streamio-ffmpeg'

current_directory = __dir__

input_path = File.join(current_directory, 'input.mp4')
movie = FFMPEG::Movie.new(input_path)

overlay_path = File.join(current_directory, 'overlay.png')

options = {
  watermark: overlay_path,
  watermark_filter: {
    position: "LB",
  }
}

# Add the overlay image onto the video
movie.transcode('output_video.mp4', options) do |ffmpeg|
  puts "progress"
end
