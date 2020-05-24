# frozen_string_literal: true

require_relative 'lib/kohi/version'

Gem::Specification.new do |spec|
  spec.name          = 'kohi'
  spec.version       = Kohi::VERSION
  spec.authors       = ['Kelvin Tay']
  spec.email         = ['kelvintaywl@gmail.com']

  spec.summary       = 'Kohi definitions'
  spec.description   = 'Ruby package for the Kohi Protobuf definitions.'
  spec.homepage      = 'https://github.com/kelvintaywl/kohi_ruby'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # this version supports running on Ruby 2.7 runtime as well
  # https://github.com/protocolbuffers/protobuf/issues/7070#issuecomment-624244973
  spec.add_dependency 'google-protobuf', '3.12.0.rc.1'

  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
end
