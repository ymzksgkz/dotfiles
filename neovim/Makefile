.ONESHELL:
	SHELL := /bin/bash

USER_NAME ?= ymzksgkz


.PHONY: install
install:
	sh ./script/install.sh $(USER_NAME)

.PHONY: uninstall
uninstall:
	sh ./script/uninstall.sh $(USER_NAME)

.PHONY: reinstall
reinstall: ## TEST
	$(MAKE) uninstall
	$(MAKE) install

