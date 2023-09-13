all: build
.PHONY: all

release: assets/forester.js
	@echo "Build forester"
	@opam exec -- forester build --base-url https://fizzyelt.github.io/functional-programming --root fp-0001 trees/
.PHONY: release

build: assets/forester.js
	@echo "Build forester"
	@opam exec -- forester build --dev --base-url https://fizzyelt.github.io/functional-programming --root fp-0001 trees/
.PHONY: build

assets/forester.js: node_modules assets
	@echo "Build JS"
	@./node_modules/.bin/esbuild --minify --bundle javascript/forester.js --outfile=assets/forester.js

node_modules:
	npm install

deps:
	brew install watch texlive
	opam install forester
.PHONY: deps
