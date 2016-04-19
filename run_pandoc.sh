#!/usr/bin/env bash

FILES=$(ls -1 *.md | sort )

TEMP_FILE=$(mktemp -u)

cat ${FILES[@]} > $TEMP_FILE

# The docx
pandoc \
    --smart \
    --output document.docx \
    --filter pandoc-citeproc \
    $TEMP_FILE

pandoc \
    --smart \
    --output document.pdf \
    --filter pandoc-citeproc \
    $TEMP_FILE

rm $TEMP_FILE

