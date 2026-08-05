#!/bin/bash
set -e

mkdir -p extracted/export/assets

for bin_file in extracted/export/binaryData/*.bin; do
    base_name=$(basename "$bin_file" .bin)
    echo "Extracting $base_name..."
    mkdir -p "extracted/export/assets/$base_name"
    ./tools/jdk-17.0.12+7-jre/bin/java -jar tools/ffdec/ffdec.jar -export script,image,sound,text,sprite "extracted/export/assets/$base_name" "$bin_file" > /dev/null 2>&1
done

echo "Done."
