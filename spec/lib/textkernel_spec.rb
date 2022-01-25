# frozen_string_literal: true

require 'textkernel_honeypot'

RSpec.describe Textkernel do
  describe '.parse_cv' do
    let(:response) { double(body: body) }
    let(:body) { File.read('spec/fixtures/cv.json') }
    let(:cv) { File.open('spec/fixtures/cv.pdf') }
    let(:endpoint) { described_class::ENDPOINT }
    let(:opts) do
      {
        username: described_class::USERNAME,
        password: described_class::PASSWORD,
        account: described_class::ACCOUNT,
        uploaded_file: cv
      }
    end

    before do
      allow(RestClient).to receive(:post).with(endpoint, opts).and_return(response)
    end

    it 'parses a cv file using textkernel' do
      expect(RestClient).to receive(:post).with(endpoint, opts).and_return(response)
      described_class.parse_cv(cv)
    end

    it 'returns the parsed cv data' do
      expected_result = JSON.parse(body)
      expect(described_class.parse_cv(cv)).to eq expected_result
    end
  end
end
