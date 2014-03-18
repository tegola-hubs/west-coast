all: west-coast-backbone.pdf

west-coast-backbone.pdf: west-coast-backbone.tex
	xelatex -interaction=nonstopmode west-coast-backbone.tex
	xelatex -interaction=nonstopmode west-coast-backbone.tex

clean:
	rm -f west-coast-backbone.pdf
	rm -f *.aux *.log *.out
