.PHONY: sync-schema ruby-build

SHELL := /usr/bin/env bash

default: sync-schema ruby-build


sync-schema:
	cp -f schema.json ruby/lib/cucumber/json/schema.json


ruby-build:
	cd ruby && gem build cucumber-json-schema

