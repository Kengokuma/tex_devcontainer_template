PROJECT ?= .
TEX_FILES := $(wildcard $(PROJECT)/*.tex)
OUT_DIR ?= $(PROJECT)/out

ifeq ($(words $(TEX_FILES)),1)
MAIN ?= $(notdir $(firstword $(TEX_FILES)))
endif

ifneq ($(findstring /,$(MAIN)),)
MAIN_PATH := $(MAIN)
else
MAIN_PATH := $(PROJECT)/$(MAIN)
endif

.PHONY: build clean check-main

check-main:
	@test -n "$(MAIN)" || { echo "MAIN is not set. Run 'make build PROJECT=path/to/project MAIN=your-file.tex'."; exit 1; }
	@test -f "$(MAIN_PATH)" || { echo "TeX file not found: $(MAIN_PATH)"; exit 1; }

build: check-main
	latexmk -outdir=$(OUT_DIR) $(MAIN_PATH)

clean: check-main
	latexmk -C -outdir=$(OUT_DIR) $(MAIN_PATH)
