pdf: paper.pdf

paper.pdf: paper.tex bibliography.bib
	pdflatex $<
	bibtex paper.aux
	pdflatex $<
	pdflatex $<

clean:
	rm -vf *.aux *.log *.blg *.bbl paper.pdf
