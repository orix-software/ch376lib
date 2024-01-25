#!/bin/bash

echo "# Assembly" > docs/code/assembly.md
echo "" >> docs/code/assembly.md

echo "# C" > docs/code/c.md
echo "" >> docs/code/c.md

for I in `ls src/*.s`; do
cat  $I | python3 docs/ca65todoc.py >> docs/code/assembly.md
cat  $I | python3 docs/ca65todoc_c_proto.py >> docs/code/c.md
done
