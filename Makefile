assignment.pdf: *.tex Bibliography.bib
	latexmk -pdf ClassicThesis.tex
pvc-force:
	latexmk --pvc --synctex=1 -f --quiet ClassicThesis.tex -pdf
clear:
	rm *.aux *.bbl *.blg *.fls *.dvi *.fdb_latexmk *.log *.out *.synctex.gz ClassicThesis.pdf
clean:
	rm *.aux *.bbl *.blg *.fls *.dvi *.fdb_latexmk *.log *.out *.synctex.gz ClassicThesis.pdf
