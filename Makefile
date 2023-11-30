EXECUTABLES = forest-server forester
K := $(foreach exec,$(EXECUTABLES),\
        $(if $(shell which $(exec)),some string,$(error "No $(exec) in PATH")))

all: build
.PHONY: all

serve:
	@forest-server -p 1313
.PHONY: serve

release: assets/forester.js theme
	@echo "Build forester"
	@opam exec -- forester build --base-url https://fizzyelt.github.io/functional-programming --root fp-0001 trees/
.PHONY: release

build: assets/forester.js theme
	@echo "Build forester"
	@opam exec -- forester build --dev --base-url https://fizzyelt.github.io/functional-programming --root fp-0001 trees/
.PHONY: build

theme:
	mkdir theme

assets/forester.js: node_modules assets
	@echo "Build JS"
	@./node_modules/.bin/esbuild --minify --bundle javascript/forester.js --outfile=assets/forester.js

node_modules:
	npm install

deps:
	cargo install forest-server
	brew install watch texlive
	opam install forester
.PHONY: deps
