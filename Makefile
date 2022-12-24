SHELL := /bin/bash

.DEFAULT_GOAL := help

include .env

.PHONY: help
help: ## Display this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: build
build: ## Build the docker image
	docker compose build python-sphinx-rtd

.PHONY: shell
shell:  ## Run shell inside a Linux container
	docker compose run --rm python-sphinx-rtd /bin/bash

.PHONY: generate-html-docs
generate-html-docs: ## Compile natively with cmake and create a bundle
	docker compose run --rm generate-html-docs

.PHONY: generate-latex-docs
generate-latex-docs:  ## Run the application natively on Linux platform
	docker compose run --rm generate-latex-docs

.PHONY: serve-html-docs
serve-html-docs:  ## Run the application natively on Linux platform
	docker compose run --rm serve-html-docs
