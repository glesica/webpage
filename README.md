# ![Logo](media/favicon.png) Webpage

A somewhat unconventional static site generator.

## Installation

Both macOS and other Unix or Unix-like systems (such as Linux) are supported.
Windows may or may not work but is not tested.

You'll need the following:

  1. [Pandoc](https://pandoc.org)
    - macOS (with Homebrew): `brew install pandoc`
    - Ubuntu / Debian: `sudo apt install pandoc`
  2. [Make](https://www.gnu.org/software/make/)
    - macOS: already installed if you have Homebrew
    - Ubuntu / Debian: `sudo apt install make`
  3. [Python 3](http://python.org) (for `serve`)
    - macOS (with Homebrew): `brew install python`
    - Ubuntu / Debian: `sudo apt install python3`

Run `doctor.sh` to automatically check for these dependencies.

## Getting Started

Once everything is installed, run `make` to see a list of available commands.
Run `make init` to create a skeleton site, including a file called `index.md`
that will serve as your main page.

Edit `index.md`, then run `make site` to build the corresponding HTML file. Run
`make serve` to serve the site locally (<http://localhost:8080>). To add
additional pages to the site just create more markdown files and run `make site`
again.

The Makefile contains a handful of variables that can be used to configure the
site. Most importantly, this is where the site title is set.

### Media

Images and other media should be placed in the `media/` directory and referenced
using relative paths. For example, to add `photo.jpg` to a page, you would use
the following Markdown syntax:

```
![My Photo](media/photo.jpg)
```

You can configure the `FAVICON` variable in the Makefile to point at your
preferred favicon image. It will be copied to `favicon.ico` in the project root.

### CSS Styles

Styles added to `media/styles.css` will be applied to your pages. This is the
best way to add custom styles as this file is shared across all of your pages.

### Head Content

If you'd like to add anything to the `<head>` tag of your pages you can modify
`includes/document-head.html`. The contents of this file will be copied,
verbatim, into each of your pages. This allows you to add JavaScript as well.

### Page Header and Footer

Modify `includes/page-header.html` and `includes/page-footer.html` to include
common content at the beginning and end (respectively) of each of your pages.
These can be used to include a menu or copyright notice, for example.

