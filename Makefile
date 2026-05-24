MAIN ?= template.tex

.PHONY: build clean

build:
	latexmk $(MAIN)

clean:
	latexmk -C $(MAIN)
