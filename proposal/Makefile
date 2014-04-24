SOURCES=\
    budget.tex \
    introduction.tex \
    licensing.tex \
    licensing_costs.tex \
    link-analysis.tex \
    technical-overview.tex \
    vendors.tex \
    west-coast-backbone.tex

all: west-coast-backbone.pdf west-coast-backbone-summary.pdf

west-coast-backbone.pdf: ${SOURCES}
	xelatex -interaction=nonstopmode west-coast-backbone.tex
	bibtex west-coast-backbone
	xelatex -interaction=nonstopmode west-coast-backbone.tex
	xelatex -interaction=nonstopmode west-coast-backbone.tex

west-coast-backbone-summary.pdf: west-coast-backbone-summary.tex introduction.tex budget.tex
	xelatex -interaction=nonstopmode west-coast-backbone-summary.tex
	xelatex -interaction=nonstopmode west-coast-backbone-summary.tex

licensing_costs.tex: licensing.py
	python licensing.py > licensing_costs.tex

clean:
	rm -f west-coast-backbone.pdf
	rm -f licensing_costs.tex
	rm -f *.aux *.log *.out *.bbl *.blg
