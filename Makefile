RAPPORT=ClassicThesis.tex
OUTPUT_DIR=output
OUTPUT_NAME=alfa

all: report.pdf

output_dir:
	mkdir -p $(OUTPUT_DIR)
report.pdf: *.tex Bibliography.bib output_dir
	latexmk -jobname=$(OUTPUT_DIR)/$(OUTPUT_NAME) -pdf $(RAPPORT)
pvc-force:
	latexmk -jobname=$(OUTPUT_DIR)/$(OUTPUT_NAME) --pvc --synctex=1 -f --quiet $(RAPPORT) -pdf
clean:
	rm *.aux *.bbl *.blg *.fls *.dvi *.fdb_latexmk *.log *.out *.synctex.gz $(RAPPORT)
