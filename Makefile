.PHONY: \
	configure run release

.SILENT: \
	configure run release

configure:
	brew install hugo
	git submodule update --remote --merge

run:
	hugo server

build:
	hugo --gc --minify
