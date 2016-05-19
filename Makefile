RAPPORT=ClassicThesis.tex
OUTPUT_DIR=output

assignment.pdf: *.tex Bibliography.bib
	latexmk -jobname=$(OUTPUT_DIR) -pdf $(RAPPORT)
pvc-force:
	latexmk -jobname=$(OUTPUT_DIR) --pvc --synctex=1 -f --quiet $(RAPPORT) -pdf
clean:
	rm *.aux *.bbl *.blg *.fls *.dvi *.fdb_latexmk *.log *.out *.synctex.gz $(RAPPORT)
