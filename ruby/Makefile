.PHONY: build clean .build-gem .sync-schema

SHELL := /usr/bin/env bash

default: build

install:
	bundle

test:
	bundle exec rspec

build: sync-schema build-gem

sync-schema:
	cp -f ../schema.json lib/cucumber/json/schema.json


build-gem:
	gem build cucumber-json-schema

clean:
	rm *.gem
