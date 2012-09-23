convert.images:
	# save the high res version.
	find assets/*.png -exec convert {}\
		-set filename:name '%t' 'build/images/%[filename:name]_2x.png'  \;
	# convert the image, sharpen them, and viola
	find assets/*.png -exec \
		convert {} \
		-resize 50% \
		-sharpen 0x1\
		-set filename:name '%t' 'build/images/%[filename:name].png' \;
