#!/bin/bash

echo "Rename prefix from:"
read input
echo "Rename prefix to:"
read prefix

for f in $(find . -type f ! -path "*.git/*" ! -name "*.png"); do
    LC_ALL=C sed -i "" -e "s/$input/$prefix/g" $f
    mv $f $(echo $f | sed "s/$input/$prefix/g")
done
