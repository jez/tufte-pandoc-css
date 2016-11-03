# What to compile by default? All *.md files where in this folder
SOURCES := $(shell find . -name '*.md')
TARGETS := $(patsubst %.md,%.html,$(SOURCES))

STYLES := tufte-css/tufte.css \
	pandoc.css \
	pandoc-solarized.css \
	tufte-extra.css

.PHONY: all
all: $(TARGETS)

## Generalized rule: how to build a .html file from each .md
%.html: %.md tufte.html $(STYLES)
	pandoc \
		--katex \
		--smart \
		--section-divs \
		--from markdown+tex_math_single_backslash \
		--filter pandoc-sidenote \
		--to html5 \
		--template=tufte \
		$(foreach style,$(STYLES),--css $(style)) \
		--output $@
		$<
