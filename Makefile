.PHONY: clean clone install install-generator test

SHELL := /usr/bin/env bash

default: test

install: clean clone install-generator

clone:
	curl -LJO https://github.com/cucumber/cucumber-json-testdata-generator/archive/refs/heads/master.zip
	unzip cucumber-json-testdata-generator-master.zip
	rm cucumber-json-testdata-generator-master.zip

install-generator:
	cd cucumber-json-testdata-generator-master && bundle && yarn

test:
	cd cucumber-json-testdata-generator-master && make clean && make

clean:
	rm -f cucumber-json-testdata-generator-master.zip
	rm -rf cucumber-json-testdata-generator-master
