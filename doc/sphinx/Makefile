# Makefile for Chapel documentation

# Sphinx-generated Makefile with minor modification
include Makefile.sphinx

help: help-sphinx help-source

help-source:
	@echo "Source Help:"
	@echo "  symlinks-docs to symlink doc/release contents to source"

docs: html

symlink-docs: clean-symlink-docs
	@echo "Setting up symlinks from /doc/release to /doc/sphinx/source"
	./symlinks.py

clean: clean-source

cleanall: clean-source

clobber: clean-source clean-build

clean-source: clean-symlink-docs clean-module-docs

clean-symlink-docs: FORCE
	@echo "Removing all symbolic links contained in source/"
	find source -type l -delete

clean-module-docs: FORCE
	rm -rf source/modules/standard
	rm -rf source/modules/internal

FORCE: