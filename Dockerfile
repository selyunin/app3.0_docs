FROM python:3.10 as base-image

ARG DEBIAN_FRONTEND=noninteractive

RUN pip install sphinx sphinx-rtd-theme

FROM base-image as python-sphinx-rtd