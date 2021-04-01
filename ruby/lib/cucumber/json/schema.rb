# frozen_string_literal: true

require 'json'
require_relative 'schema/version'

module Cucumber
  module Json
    module Schema
      def self.schema
        JSON.parse(File.read('lib/cucumber/json/schema.json'))
      end
    end
  end
end
