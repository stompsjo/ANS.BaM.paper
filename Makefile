pdf: example.pdf

example.pdf: example.tex bibliography.bib
	pdflatex $<
	bibtex example.aux
	pdflatex $<
	pdflatex $<

clean:
	rm -vf *.aux *.log *.blg *.bbl example.pdf
