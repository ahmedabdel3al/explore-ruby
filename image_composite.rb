require 'rmagick'

current_directory = __dir__

input_path = File.join(current_directory, 'input.png')
overlay_path = File.join(current_directory, 'overlay.png')

base_image = Magick::Image.read(input_path).first
overlay_image = Magick::Image.read(overlay_path).first

# Resize the overlay image to 30x30 pixels
overlay_image.resize_to_fit!(80, 120)

# Calculate the position for the overlay image (right bottom corner)
x_offset = base_image.columns - overlay_image.columns
y_offset = base_image.rows - overlay_image.rows

base_image.composite!(overlay_image, x_offset, y_offset, Magick::OverCompositeOp)

base_image.write('output_image.jpg')
