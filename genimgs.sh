#!/bin/bash

# Generate 24x24 image rectangles from the README.md

grep -oP "(?<=\#)[0-9a-fA-F]+" ./README.md | xargs -I {} convert -size 24x24 xc:#{} ./img/{}.png

