# Variablen
PANDOC_BEAMER=-t beamer --slide-level 2
RUBBER_ARG=-d

# main targets
beamer: presentation.pdf
	mv $< beamer.pdf
	rubber $(RUBBER_ARG) --clean presentation
	rm -f presentation.vrb

# Convert markdown to tex using pandoc
slides.tex: $(wildcard slides/*.md)
	pandoc $(PANDOC_BEAMER) -o $@ slides/*.md

# Build pdfs
presentation.tex: slides.tex

%.pdf: %.tex
	rubber $(RUBBER_ARG) $<

# Generic
clean:
	rubber $(RUBBER_ARG) --clean presentation
	rm -f slides.tex presentation.vrb beamer.pdf
