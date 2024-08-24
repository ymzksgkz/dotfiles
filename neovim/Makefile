.ONESHELL:
	SHELL := /bin/bash

GIT_USER_NAME ?= $(shell git config user.name)


.PHONY: install
install:
	sh ./script/install.sh nvim_$(GIT_USER_NAME)

.PHONY: uninstall
uninstall:
	echo $(GIT_USER_NAME)
	sh ./script/uninstall.sh nvim_$(GIT_USER_NAME)

.PHONY: reinstall
reinstall:
	$(MAKE) uninstall
	$(MAKE) install

