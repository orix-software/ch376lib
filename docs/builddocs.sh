#!/bin/bash

echo "# Assembly" > docs/code/assembly.md
echo "" >> docs/code/assembly.md

echo "# C" > docs/code/c.md
echo "" >> docs/code/c.md
pwd
VERSION=`cat VERSION`

echo "# Assembly" > docs/code/$VERSION/assembly.md
echo "" >> docs/code/$VERSION/assembly.md

echo "# C" > docs/code/$VERSION/c.md
echo "" >> docs/code/$VERSION/c.md

echo $VERSION
mkdir docs/code/$VERSION
for I in `ls src/*.s`; do
cat  $I | python3 docs/ca65todoc.py >> docs/code/$VERSION/assembly.md
cat  $I | python3 docs/ca65todoc_c_proto.py >> docs/code/$VERSION/c.md
cat  $I | python3 docs/ca65todoc.py >> docs/code/assembly.md
cat  $I | python3 docs/ca65todoc_c_proto.py >> docs/code/c.md
done

# header

rm docs/code/$VERSION/ch376.inc.md
while IFS= read -r ligne; do
    echo "*$ligne" >> "docs/code/$VERSION/ch376.inc.md"
done < "src/include/ch376.inc"
