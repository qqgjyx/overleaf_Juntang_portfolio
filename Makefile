.PHONY: pdf clean

pdf:
	latexmk -lualatex -shell-escape -interaction=nonstopmode main.tex

clean:
	latexmk -C
	rm -f *.bbl *.run.xml *.synctex.gz
	rm -rf .texmf-var

