#!/usr/bin/env bash

FILES=$(ls -1 docs/*.md | sort )

TEMP_FILE=$(mktemp -u)

cat ${FILES[@]} > $TEMP_FILE

cat biblio/*.bib > bibliography.bib

# The docx
pandoc \
    --smart \
    --output document.docx \
    --filter pandoc-citeproc \
    $TEMP_FILE

# The pdf
pandoc \
    --smart \
    --output document.pdf \
    --filter pandoc-citeproc \
    $TEMP_FILE

rm $TEMP_FILE

