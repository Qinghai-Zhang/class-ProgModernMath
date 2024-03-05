default: notesNumAnal.pdf

%.pdf : %.tex bib pst sec
	$(MAKE) --directory=pst
	pdflatex $<
	pdflatex $<
	bibtex $*
	pdflatex $<
	pdflatex $<
	pdflatex $<

clean:
	$(MAKE) --directory=pst clean
	$(RM) *.aux *.bbl *.blg *.log *.dvi *.toc *~ 

purge:
	$(MAKE) --directory=pst purge
	$(RM) *.aux *.bbl *.blg *.log *.dvi *.toc *~ *.pdf */*~ *~ pst/*.pdf
