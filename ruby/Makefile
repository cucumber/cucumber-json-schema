.PHONY: sync-schema ruby-build

SHELL := /usr/bin/env bash

default: sync-schema ruby-build


sync-schema:
	cp -f ../schema.json lib/cucumber/json/schema.json


ruby-build:
	gem build cucumber-json-schema

