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

  describe 'step' do
    it 'rejects when there is no status' do
      step_without_status_result = JSON.parse(File.read('testdata/invalid/step_without_status.json'))

      expect(schemer.valid?(step_without_status_result)).to be_falsy
    end

    it 'rejects when there is no keyword' do
      step_without_keyword_result = JSON.parse(File.read('testdata/invalid/step_without_keyword.json'))

      expect(schemer.valid?(step_without_keyword_result)).to be_falsy
    end

    it 'rejects when there is no line' do
      step_without_line_result = JSON.parse(File.read('testdata/invalid/step_without_line.json'))

      expect(schemer.valid?(step_without_line_result)).to be_falsy
    end

    it 'rejects when there is no error message for a failing step' do
      step_fail_without_error_message_result = JSON.parse(File.read('testdata/invalid/step_fail_without_error_message.json'))

      expect(schemer.valid?(step_fail_without_error_message_result)).to be_falsy
    end

    it 'rejects invalid status' do
      step_with_invalid_status_result = JSON.parse(File.read('testdata/invalid/step_with_invalid_status.json'))

      expect(schemer.valid?(step_with_invalid_status_result)).to be_falsy
    end
  end

  describe 'element' do
    it 'rejects when there is no type' do
      element_without_type_result = JSON.parse(File.read('testdata/invalid/element_without_type.json'))

      expect(schemer.valid?(element_without_type_result)).to be_falsy
    end

    it 'rejects when there is no line' do
      element_without_line_result = JSON.parse(File.read('testdata/invalid/element_without_line.json'))

      expect(schemer.valid?(element_without_line_result)).to be_falsy
    end
  end
end
