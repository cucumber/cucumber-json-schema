require 'json_schemer'
require 'rspec'

RSpec.describe 'schema' do
  let(:schema) { JSON.parse(File.read('schema.json')) }
  let(:schemer) { JSONSchemer.schema(schema) }
  let(:number_of_results) { 36 }
  let(:specflow_number_of_results) { 18 }

  describe 'rb', :rb do
    it 'validates json results' do
      expect(schemer).to receive(:valid?).exactly(number_of_results).times.and_call_original

      Dir.glob('cucumber-json-testdata-generator-master/features/*.rb.json') do |rb_filename|
        expect(schemer.valid?(JSON.parse(File.read(rb_filename)))).to be_truthy
      end
    end
  end

  describe 'js', :js do
    it 'validates json results' do
      expect(schemer).to receive(:valid?).exactly(number_of_results).times.and_call_original

      Dir.glob('cucumber-json-testdata-generator-master/features/*.js.json') do |js_filename|
        expect(schemer.valid?(JSON.parse(File.read(js_filename)))).to be_truthy
      end
    end
  end

  describe 'java', :java do
    it 'validates json results' do
      expect(schemer).to receive(:valid?).exactly(number_of_results).times.and_call_original

      Dir.glob('cucumber-json-testdata-generator-master/features/*.java.json') do |java_filename|
        expect(schemer.valid?(JSON.parse(File.read(java_filename)))).to be_truthy
      end
    end
  end

  describe 'specflow', :specflow do
    it 'validates json results' do
      expect(schemer).to receive(:valid?).exactly(specflow_number_of_results).times.and_call_original

      Dir.glob('cucumber-json-testdata-generator-master/features/*.specflow.json') do |specflow_filename|
        expect(schemer.valid?(JSON.parse(File.read(specflow_filename)))).to be_truthy
      end
    end
  end
end
