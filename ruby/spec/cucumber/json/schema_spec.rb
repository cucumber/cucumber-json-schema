# frozen_string_literal: true

require 'json'

RSpec.describe Cucumber::Json::Schema do
  it 'has a version number' do
    expect(Cucumber::Json::Schema::VERSION).not_to be nil
  end

  describe '#schema' do
    it 'returns the schema' do
      expect(Cucumber::Json::Schema.schema).to eq(JSON.parse(File.read('lib/cucumber/json/schema.json')))
    end
  end
end
