# Application Board 3.0 Sphinx Documentation

This repo holds generated web documentation for the
Bosch Application Board 3.0 evaluation board.

The documentation is available as `github pages` 
and is updated via `github actions`.

Access the generated documentation with the following link:

[**https://selyunin.github.io/app3.0_docs/**](https://selyunin.github.io/app3.0_docs/)

**Note:** Browsers do cache results. 
Refresh the page / try using different browser if you think you access the old version.

## Building documentation locally

In order to build the documentation locally, install `sphinx` and the `sphinx_rtd_theme`:
```
pip install sphinx sphinx_rtd_theme
```
Use sphinx to build the HTML documentation, and spawn the `http.server` to view it locally:
```
cd generated_html_docs_folder
python -m http.server 8080
```