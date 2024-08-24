.ONESHELL:
	SHELL := /bin/bash

GIT_USER_NAME ?= $(git config user.name)


.PHONY: install
install:
	sh ./script/install.sh $(GIT_USER_NAME)

.PHONY: uninstall
uninstall:
	sh ./script/uninstall.sh $(GIT_USER_NAME)

.PHONY: reinstall
reinstall: ## TEST
	$(MAKE) uninstall
	$(MAKE) install

