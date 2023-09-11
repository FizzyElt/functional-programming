build:
	npm install
	./node_modules/.bin/esbuild --minify --bundle javascript/forester.js --outfile=assets/forester.js
	opam exec -- forester build --dev --root fp-0001 trees/
.PHONY: build

deps:
	brew install watch
	brew install texlive
.PHONY: deps
