#!/bin/sh
while true; do
	generate-md -layout jasonm23-foghorn --input ./input --output ./output
	find output/ -name '*.html' | xargs sed -i 's%<head>%<head><script type="text/javascript" src="mathjax/MathJax.js?config=TeX-AMS-MML_SVG"></script>%'
	sleep 2
done
