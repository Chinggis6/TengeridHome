# convert logo.png -resize 100x100 small.png

# Options and examples
# https://www.howtogeek.com/109369/how-to-quickly-resize-convert-modify-images-from-the-linux-terminal/

function ires -d "Resize images"

	command convert $argv[1] -resize $argv[2] $argv[3]

end
