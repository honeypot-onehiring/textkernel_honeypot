# frozen_string_literal: true

class Textkernel
  ENVIRONMENT = ENV.fetch('TEXTKERNEL_ENV', 'staging')
  USERNAME = ENV['TEXTKERNEL_USERNAME']
  ACCOUNT = ENV['TEXTKERNEL_ACCOUNT']
  PASSWORD = ENV['TEXTKERNEL_PASSWORD']
  BASE_URL = "https://#{ENVIRONMENT}.textkernel.nl".freeze
  ENDPOINT = "#{BASE_URL}/sourcebox/extract.do?useHttpErrorCodes=true&useJsonErrorMsg=true".freeze

  def self.parse_cv(file)
    opts = {
      username: USERNAME,
      password: PASSWORD,
      account: ACCOUNT,
      uploaded_file: file
    }
    RestClient.post(ENDPOINT, opts)
              .parsed_body(symbolize_names: true)
              .deep_transform_keys { |x| x.to_s.underscore.to_sym }
              .except(:document_text, :document_html)
  end
end
