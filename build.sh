#!/bin/bash
pdflatex --shell-escape thesis && biber thesis && pdflatex --shell-escape thesis && open thesis.pdf