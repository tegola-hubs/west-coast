all: west-coast-backbone.pdf

west-coast-backbone.pdf: west-coast-backbone.tex link-analysis.tex
	xelatex -interaction=nonstopmode west-coast-backbone.tex
	bibtex west-coast-backbone
	xelatex -interaction=nonstopmode west-coast-backbone.tex
	xelatex -interaction=nonstopmode west-coast-backbone.tex

clean:
	rm -f west-coast-backbone.pdf
	rm -f *.aux *.log *.out *.bbl *.blg
