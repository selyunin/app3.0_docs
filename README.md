# Application Board 3.0 Documentation

This repo holds source and generated **unofficial**, **open-source**, **community-written** web documentation for the
[Bosch Sensortec Application Board 3.0](https://www.bosch-sensortec.com/software-tools/tools/application-board-3-0/) 
evaluation board.

The documentation is available as [`github pages`](https://pages.github.com/) 
and is updated via [`github actions`](https://github.com/features/actions). 
We use [sphinx](https://www.sphinx-doc.org/en/master/) 
as documentation engine.
The documentation is written in [`reStructuredText`](https://docutils.sourceforge.io/rst.html) 
and converted to HTML with `python`.
To obtain its familiar *look-and-feel*, we use the [sphinx_rtd_theme](https://github.com/readthedocs/sphinx_rtd_theme).

Access the generated documentation with the following link:

[**https://selyunin.github.io/app3.0_docs/**](https://selyunin.github.io/app3.0_docs/)

**Note:** Browsers do cache results. 
Refresh the page / try using different browser if you think you access the old version.

## Building documentation locally

In order to build the documentation locally, install `sphinx` and the `sphinx_rtd_theme`:
```sh
pip install sphinx sphinx_rtd_theme
```

Use sphinx to build the HTML documentation, and spawn the `http.server` to view it locally:
```sh
cd generated_html_docs_folder
python -m http.server 8080
```


## Maintainer

[Dr. Konstantin Selyunin](http://selyunin.com/), 
for suggestions / questions / comments 
please contact: 
selyunin [dot] k [dot] v [at] gmail [dot] com

