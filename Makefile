# LaTeX Makefile v0.33 -- LaTeX only

PAPER=charter.tex  # set the path to your TeX file here
SHELL=/bin/bash   # for the while loop below

all: $(PAPER) ## Compile paper
	pdflatex $(PAPER)

clean:  ## Clean output files
	rm -f *.aux *.lof *.log *.lot *.fls *.out *.toc *.fmt *.fot *.cb *.cb2 .*.lb 

watch:  ## Recompile on updates to the source file
	@while true; do; inotifywait $(PAPER); sleep 0.01; make all; done