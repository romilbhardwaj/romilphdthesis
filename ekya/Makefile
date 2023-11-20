PYTHON3 := $(shell type -P python3 || echo "")

BUILD = pdflatex main && bibtex main.aux && pdflatex main && pdflatex main && open *pdf

.PHONY: all view clean

all : ${PRJ}.pdf

${PRJ}.pdf : *.tex *.bib
	${BUILD}

view : ${PRJ}.pdf
	open ${PRJ}.pdf &

clean:
	rm -Rf latex.out
	rm -f *.toc *.aux *.bbl *.blg *.log *~* *.bak *.out *synctex.gz ${PRJ}.pdf
