---
title: A Markdown template for writing papers
author: Jorge Langa
date of start: 2016-04-19
tags: markdown, academic, paper, pandoc, citation, shell
---

## What's this?

This repo is a template for writing papers in Markdown. You should edit the corresponding `.md` files with your text and the citations in the `.bib` file to then use `pandoc` to compile the final document. As I work in Biology, most of my workmates prefer to use `.docx` instead of `.pdf` or `.tex`.



## File and folder conventions

- `XX_section.md`: The markdown files to be edited. You should put your text here.

- `bibliography.bib`: The Bibtex file with all the citations or only the one you are going to need to be used in the paper.

- `style.csl`: This is the style in which the text is going to be formatted. Here it is `plos.csl`, but you can find more at the [editor.citationstyles.org](http://editor.citationstyles.org/about/).

- `run_pandoc.sh`: a simple bash script to put together all the `.md` documents to then render both the final `.pdf` and `.docx` documents.



## Requirements

- `pandoc` for the hard workmates.

- `pandoc-citeproc` to manage citationstyles.

- `pdflatex` to render the pdf.

- Any kind of flat text editor, from Sublime Text 2/3 to gedit or pluma.



## Running it

`./run_pandoc.sh` or `bash run_pandoc.sh`
