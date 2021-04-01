# cucumber-json-schema

This repository contains JSON Schemas for the Cucumber JSON format.

Tools that consume Cucumber JSON can use these schemas to validate that a document is valid.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cucumber/cucumber-json-schema.

### Development
Make commands are available to help you

```bash
make install        # Install everything you need to develop

make test           # Run validation of the schema against
                    # every known cucumber json results

make test-java      # Run validation of the schema against every java results
make test-js        # Run validation of the schema against every js results
make test-rb        # Run validation of the schema against every rb results
make test-specflow  # Run validation of the schema against every specflow results

make clean          # Cleanup dependencies that has been installed by `make install`
```

## License

The project is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

