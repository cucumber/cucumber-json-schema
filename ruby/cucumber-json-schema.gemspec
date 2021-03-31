# frozen_string_literal: true

require_relative "lib/cucumber/json/schema/version"

Gem::Specification.new do |spec|
  spec.name          = "cucumber-json-schema"
  spec.version       = Cucumber::Json::Schema::VERSION
  spec.authors       = ["Cynthia Maillard", "Timothee Ville", "Mathias Coqblin"]
  spec.email         = ["cynthia.maillard@smartbear.com",
                        "timothee.ville@smartbear.com",
                        "mathias.coqblin@smartbear.com"]

  spec.summary       = "JSON schema that describe cucumber JSON report"
  spec.homepage      = "https://github.com/cucumber/cucumber-json-schema"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cucumber/cucumber-json-schema"
  spec.metadata["changelog_uri"] = "https://github.com/cucumber/cucumber-json-schema/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir["lib/**/*"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.7"
  spec.add_development_dependency "pry", "~> 0.14.0"
end
