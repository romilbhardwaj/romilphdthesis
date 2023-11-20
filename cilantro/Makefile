main.pdf: compile1
bib: compile2
twice: compile1twice

compile1: main.tex
	pdflatex $<

compile1twice: main.tex
	pdflatex $<
	pdflatex $<

compile2: main.tex
	pdflatex $<
	bibtex main
	pdflatex $<
	pdflatex $<

tidy:
	rm -f *.aux
	rm -f *.log
	rm -f *.blg
	rm -f *.bbl
	rm -f *.out
	rm -f *-blx.bib
	rm -f *.run.xml
	rm -f main.pdf

clean:
	rm -f main.pdf

.PHONY: clean
