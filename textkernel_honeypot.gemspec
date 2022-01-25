# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'textkernel_honeypot'
  spec.version = '0.0.1'
  spec.authors = ['Andrzej Trzaska']
  spec.email = ['atrzaska2@gmail.com']
  spec.licenses    = ['MIT']

  spec.summary = 'Simple gem wrapper for cv parsing via textkernel'
  spec.description = 'Simple gem wrapper for cv parsing via textkernel.'
  spec.homepage = 'https://github.com/honeypotio/textkernel_honeypot'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/honeypotio/textkernel_honeypot'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.require_paths = ['lib']
  spec.add_dependency 'rest-client'
end
