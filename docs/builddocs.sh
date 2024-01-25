#!/bin/bash

for I in `ls src/*.s`; do
cat  src//$I | python3 docs/ca65todoc.py >> docs/code/README.md
done