all: build
.PHONY: all

serve:
	@$(if $(shell which forest), echo "forest-server installed", cargo install forest-server)
	@forest watch 1313 -- "build --dev --base-url https://fizzyelt.github.io/functional-programming --root fp-0001 trees/ "
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
