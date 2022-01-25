# frozen_string_literal: true

require 'json'
require 'restclient'

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
    body = RestClient.post(ENDPOINT, opts).body
    json = JSON.parse(body)
    json.except('documentText', 'documentHtml')
  end
end
