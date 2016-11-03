# What to compile by default?
SOURCES := docs/index.md \
	docs/tufte-md/index.md
TARGETS := $(patsubst %.md,%.html,$(SOURCES))

STYLES := tufte-css/tufte.css \
	pandoc.css \
	pandoc-solarized.css \
	tufte-extra.css

.PHONY: all
all: $(TARGETS)

## Generalized rule: how to build a .html file from each .md
%.html: %.md tufte.html5 $(STYLES)
	pandoc \
		--katex \
		--smart \
		--section-divs \
		--from markdown+tex_math_single_backslash \
		--filter pandoc-sidenote \
		--to html5 \
		--template=tufte \
		$(foreach style,$(STYLES),--css $(notdir $(style))) \
		--output $@ \
		$<

.PHONY: clean
clean:
	rm $(TARGETS)

# The default tufte.css file expects all the assets to be in the same folder.
# In real life, instead of duplicating the files you'd want to put them in a
# shared "css/" folder or something, and adjust the `--css` flags to the pandoc
# command to give the correct paths to each CSS file.
.PHONY: docs
docs:
	cp -r $(STYLES) tufte-css/et-book/ docs/
	cp -r $(STYLES) tufte-css/et-book/ tufte-css/img/ tufte-css/latex.css docs/tufte-md/
