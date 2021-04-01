.PHONY: clean install test test-js test-java test-rb .clone-generator .install-dependencies

SHELL := /usr/bin/env bash

default: test

install: clean .install-dependencies .clone-generator

clean:
	rm -f cucumber-json-testdata-generator-master.zip
	rm -rf cucumber-json-testdata-generator-master

.install-dependencies:
	bundle

.clone-generator:
	curl -LJO https://github.com/cucumber/cucumber-json-testdata-generator/archive/refs/heads/master.zip
	unzip cucumber-json-testdata-generator-master.zip
	rm cucumber-json-testdata-generator-master.zip

test: test-js test-java test-rb test-specflow

test-js:
	bundle exec rspec --tag js

test-java:
	bundle exec rspec --tag java

test-rb:
	bundle exec rspec --tag rb

test-specflow:
	-bundle exec rspec --tag specflow
