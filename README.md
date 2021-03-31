# Cucumber JSON Schema

This repository contains JSON Schemas for the Cucumber JSON format.

Tools that consume Cucumber JSON can use these schemas to validate that a
document is valid.

## Usage

```ruby
require 'cucumber/json/schema'

Cucumber::Json::Schema.schema
```
