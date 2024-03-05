
allEps : CosinesLaw.eps ParallelogramLaw.eps svd.eps 

clean :
	rm -f *.aux *.log *.cache *~

purge :
	rm -f *.aux *.log *.cache *~ *.eps

%.eps : %.dvi
	dvips $< -E -o $@

%.dvi : %.tex
	latex $<
