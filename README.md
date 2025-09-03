# @cucumber/json-schema

JSON schema for the (legacy) Cucumber JSON format, along with implementation-specific variants from cucumber-jvm etc.

* For the new unified message format, see [Cucumber Messages](https://github.com/cucumber/messages).
* For a tool to convert messages to the legacy json format
  see [Cucumber JSON Formatter](https://github.com/cucumber/cucumber-json-formatter).

## Implementation Status

These schemas should be considered a best effort work in progress.

These schema was initially implemented and tested as part of
the [Cucumber JSON Converter](https://github.com/cucumber/cucumber-json-converter). This project does not seem to have
been used in earnest as the accuracy of the schema leaves much to de desired. The schema is also regression tested in
the [Cucumber JSON Formatter](https://github.com/cucumber/cucumber-json-formatter) project. This testing is more
extensive.

| Schema               | Cucumber JSON Converter | Cucumber JSON Formatter |
|----------------------|-------------------------|-------------------------| 
| `cucumber-js.json`   | Verified                | Unverified              | 
| `cucumber-jvm.json`  | Verified                | Verified                |
| `cucumber-ruby.json` | Verified                | Unverified              |
| `behave.json`        | Unverified              | Unverified              |
| `canonical.json`     | Unverified              | Unverified              |


