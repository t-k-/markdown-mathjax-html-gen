#!/bin/sh
while true; do
	generate-md -layout jasonm23-foghorn --input ./input --output ./output
	find output/ -name '*.html' | xargs sed -i 's%<head>%<head><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.2/MathJax.js?config=TeX-AMS-MML_SVG"></script>%'
	sleep 2
done
