.ONESHELL:
	SHELL := /bin/bash

ENV_NAME ?= $(NVIM_CUSTOM_ENV_NAME)


.PHONY: install
install:
	sh ./script/install.sh $(ENV_NAME)

.PHONY: uninstall
uninstall:
	sh ./script/uninstall.sh $(ENV_NAME)

.PHONY: reinstall
reinstall: ## TEST
	$(MAKE) uninstall
	$(MAKE) install

