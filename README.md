# Tufte Pandoc CSS

> Starter files for using Pandoc Markdown with Tufte CSS

This project aims to provide a standard set of project starter files for working
with [Pandoc] and [Tufte CSS]. It features:

- extra CSS styles for things like tables and syntax highlighted code
- tweaks to the CSS to get HTML produced by Pandoc to play nicely with Tufte CSS
- an optional Solarized light color scheme for code blocks
- a modular separation of these components--you can select which you want
- an HTML5 template file that sets up the document the way Tufte CSS expects
- support for lots of Pandoc markdown features, including
  - footnotes as side notes
  - footnotes as margin notes
  - metadata like `title`, `subtitle`, `date`, and `author`
  - LaTeX using MathJax or KaTeX

Apart from projects like Tufte CSS & Pandoc, the main project that enables this
project is [`pandoc-sidenote`], a project which converts Pandoc Markdown-style
footnotes (`[^1]`) into side notes.

> ### Looking to use this with Jekyll?
>
> You might be interested in [Tufte Pandoc Jekyll], which wraps the files
> distributed here into a Jekyll gem-based theme.
>
> ### Looking for the same features, but a different look?
>
> You might be interested in [Pandoc Markdown CSS Theme], a theme with much of
> the same features as this theme, but with a more easily customizable look.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [Background](#background)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## Background

If you haven't already, I encourage you to explore the projects that have been
built on top of here:

- [Pandoc] - a universal document converter
- [Tufte CSS] - style your webpage like Edward Tufte's handouts
- [`pandoc-sidenote`] - convert Pandoc Markdown-style footnotes into sidenotes


## Installation

> ### Dependencies
>
> This project is always tested relative to:
>
> - the most recent `master` commit of [`tufte-css`].
> - the latest release version of pandoc
>
> In particular, you'll need at least Pandoc version 2.0.

This project is meant to be a set of *starter* files for your next project. What
that ultimately means is that you should use these files however your heart sees
fit. In practice, here are some tips for some things you may want to do to get
set up.

First, install `pandoc-sidenote` to your PATH.

- This lets `pandoc` compile footnotes into sidenotes.
- Instructions are on the [`pandoc-sidenote`] homepage.

Second, download `tufte.css` and the `et-book/` font folder.

- Head over to [`tufte-css`] to download these.
- You should be able to work with any version of Tufte CSS, assuming things
  haven't changed too much.
- If things don't seem to be working, try using the version stashed in the
  `tufte-css/` folder in this repo (it's a submodule).

Third, there are a number of static files you can download and place where you
see fit:

- `tufte.html5`
  - This is an HTML5 compatible template for use with Pandoc's `--template`
    flag.
  - It sets up the document structure in a way Tufte CSS expects.
- `pandoc.css`
  - This CSS file has styles for things like sections, author & date
    information, highlighted code blocks, and tables.
- `pandoc-solarized.css` (optional)
  - This sets up highlighted code blocks to use the Solarized Light color theme
- `tufte-extra.css` (optional)
  - This makes some "personal preference" tweaks to Tufte CSS. It is NOT
    required.

Finally, you'll want the `Makefile`.

- The Makefile usage is explained below.


## Usage

The best way to learn to use this project is to read the documentation--both
online and in the source code. You'll probably want to look through things in
this order

1. The [re-implementation of the Tufte CSS][tufte-md] homepage in Pandoc Markdown
  - Remember to read the [source][tufte-md-src]!
1. The [Tufte Pandoc CSS homepage], which documents the additional features
   specific to this project.
  - Remember to read the [source][homepage-src]!
1. The included [Makefile], which compiles `*.md` files into `*.html` files
   using `pandoc` with the correct options.
1. The [Pandoc] homepage. Not everything you see here will work with this
   project, but if you think something should work that doesn't, open an issue.
   - You'll probably want to just skim this... it's lengthy!

Once you have an understanding of what Markdown features are available, you can
use the Makefile to compile your Markdown files.

For example, this is how we build the homepage for this site:

```
make docs/index.md
```

and here's how we build all the site files:

```
make docs
make
```

Assuming you've laid out your directory identically to this repo, you can pass
the name of any `*.md` file to convert it into an appropriately named `*.html`
file.

```
make my-pandoc-markdown-file.md
```


## License

[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](https://jez.io/MIT-LICENSE.txt)


[Pandoc]: http://pandoc.org
[Tufte CSS]: https://edwardtufte.github.io/tufte-css/
[`tufte-css`]: https://github.com/edwardtufte/tufte-css
[`pandoc-sidenote`]: https://github.com/jez/pandoc-sidenote
[tufte-md]: https://jez.io/tufte-pandoc-css/tufte-md/
[Tufte Pandoc CSS homepage]: https://jez.io/tufte-pandoc-css/
[Tufte Pandoc Jekyll]: https://github.com/jez/tufte-pandoc-jekyll
[Pandoc Markdown CSS Theme]: https://github.com/jez/pandoc-markdown-css-theme
[tufte-md-src]: docs/tufte-md/index.md
[homepage-src]: docs/index.md
[`Makefile`]: Makefile
