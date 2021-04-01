.PHONY: build clean ruby-build sync-schema

SHELL := /usr/bin/env bash

default: sync-schema ruby-build

build: default

sync-schema:
	cp -f ../schema.json lib/cucumber/json/schema.json


ruby-build:
	gem build cucumber-json-schema

clean:
	rm *.gem
