# (Unofficial) Documentation for Bosch Sensortec Application Board 3.0

The repo holds source and generated **unofficial**, **open-source**, **community-written** web documentation for the
[Bosch Sensortec Application Board 3.0](https://www.bosch-sensortec.com/software-tools/tools/application-board-3-0/) 
evaluation board.

The documentation is available as [`github pages`](https://pages.github.com/) 
and is updated via [`github actions`](https://github.com/features/actions). 
We use [sphinx](https://www.sphinx-doc.org/en/master/) 
as a documentation engine.
The documentation is written in [`reStructuredText`](https://docutils.sourceforge.io/rst.html) 
and converted to HTML with `python`.
To obtain its familiar *look-and-feel*, we use the [sphinx_rtd_theme](https://github.com/readthedocs/sphinx_rtd_theme).

Access the HTML pages with the following link:

[**https://selyunin.github.io/app3.0_docs/**](https://selyunin.github.io/app3.0_docs/)

**Note:** Browsers do cache results. 
Refresh the page / try using different browser if you think you access the old version.

## Building documentation locally

To build the documentation locally, install
[`sphinx`](https://www.sphinx-doc.org/en/master/) and the 
[`sphinx_rtd_theme`](https://pypi.org/project/sphinx-rtd-theme/):
```sh
pip install sphinx sphinx-rtd-theme
```

Use `sphinx` to generate documentation from `*.rst` files:
* build HTML pages:
```
python -m sphinx -b html source out/html
```

* build LaTeX pages:
```
python -m sphinx -b latex source out/latex
```

When the HTML pages are generated, 
spawn the `http.server` to view the pages locally:
```sh
cd /path/to/generated/html/
python -m http.server 8080
```

Go to the `localhost:8080` in browser and read the pages.

## Maintainer

[Dr. Konstantin Selyunin](http://selyunin.com/), 
for suggestions / questions / comments 
please contact: 
selyunin [dot] k [dot] v [at] gmail [dot] com

