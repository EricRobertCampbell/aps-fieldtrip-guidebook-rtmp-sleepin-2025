# Makefile for APS Field Trip Guidebook

# Main LaTeX file (without extension)
MAIN = guidebook

# Phony targets
.PHONY: all depclean clean rebuild

# Default target: build PDF
all: $(MAIN).pdf

# Build PDF using latexmk
$(MAIN).pdf: $(MAIN).tex
	latexmk -pdf -interaction=nonstopmode $(MAIN).tex

# Remove dependency files but keep the PDF
depclean:
	latexmk -c $(MAIN).tex
	rm -f $(MAIN).bbl $(MAIN).run.xml

# Remove all generated files including PDF
clean:
	latexmk -C $(MAIN).tex
	rm -f $(MAIN).bbl $(MAIN).run.xml $(MAIN).pdf

# Force rebuild
rebuild: clean all
